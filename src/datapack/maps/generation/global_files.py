""" The functions shared by every survival map. """
# Imports
import json

import stouputils as stp
from beet import Function
from stewbeet.core import Mem, write_function

from ...modes.catalogue import MODES
from .shared_memory import generated_maps, survival_maps


# Functions
def generate_regenerate_every_maps_files() -> None:
	""" Generate a file that launch the regeneration on every map progressively. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/regenerate_every_maps"
	write_function(path, f"data modify storage {ns}:maps to_regenerate set value {{}}")
	for name in survival_maps:
		write_function(path, f"data modify storage {ns}:maps to_regenerate.{name} set value 1b")
	write_function(path, f"schedule function {ns}:maps/loop_regenerate_every_maps 1t")

	## Generate the loop_regenerate_every_maps file
	path: str = f"{ns}:maps/loop_regenerate_every_maps"
	write_function(path, f"""
execute if data storage {ns}:maps to_regenerate{{{survival_maps[-1]}:1b}} run schedule function {ns}:maps/loop_regenerate_every_maps 1t
execute if data storage {ns}:maps to_regenerate{{{survival_maps[0]}:1b}} run function {ns}:maps/survival/{survival_maps[0]}/regenerate
""")
	for i in range(1, len(survival_maps)):
		previous_map = survival_maps[i - 1]
		current_map = survival_maps[i]
		write_function(path, f"execute unless data storage {ns}:maps to_regenerate.{previous_map} if data storage {ns}:maps to_regenerate{{{current_map}:1b}} run function {ns}:maps/survival/{current_map}/regenerate")


def generate_load_file() -> None:
	""" Generate the load file for the survival maps
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/load_survival"
	for name in generated_maps:
		write_function(path, f'execute if data storage {ns}:main {{map:"{name}"}} run function {ns}:maps/survival/{name}/main')


def generate_regenerate_map_file() -> None:
	""" Generate the regenerate_map file for the survival maps
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/regenerate_map"
	write_function(path, "# Regenerate the survival maps")
	for name in generated_maps:
		write_function(path, f'execute if data storage {ns}:main {{map:"{name}"}} run function {ns}:maps/survival/{name}/regenerate')

	# Write the last lines
	write_function(path, f"\n# Remove the map from the storage\ndata remove storage {ns}:main map")
	write_function(path, f"\n# Change score of already regenerated map\nscoreboard players set #already_regenerated {ns}.data 1")


def generate_resume_regeneration_file() -> None:
	""" Generate a resume_regeneration file for the survival maps
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/resume_regeneration"
	write_function(path, "# Resume the regeneration of the survival maps")
	for name in generated_maps:
		write_function(path, f"execute if score #rg_{name} {ns}.data matches 1.. run function {ns}:maps/survival/{name}/regenerate")


def generate_spread_one_player_file() -> None:
	""" Generate the spread_one_player file for the survival maps
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/spread_one_player"
	write_function(path, "# Spread one player on the survival maps")
	for name in generated_maps:
		write_function(path, f'execute if data storage {ns}:main {{map:"{name}"}} run function {ns}:maps/survival/{name}/spread_one_player')

def generate_intro_spread_file() -> None:
	""" Generate the intro_spread file for the survival maps
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/intro_spread"
	write_function(path, "# Launch the intro spread for the survival maps")
	for name in generated_maps:
		write_function(path, f'execute if data storage {ns}:main {{map:"{name}"}} run function {ns}:maps/survival/{name}/intro_spread')


def generate_map_usage_file() -> None:
	""" Generate the map_usage file for the survival maps, it shows for each map which modes use it
	Args:
		config: The configuration of the project
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{Mem.ctx.directory}/map_usage.json"
	CHOOSE_MAP_FOR: str = f"function {ns}:maps/choose_map_for"

	# Get for each modes the maps they use
	modes_usage: dict[str, list[str]] = {}
	for mode in MODES:
		start_file: str = f"{ns}:modes/{mode.id}/"
		modes_usage[mode.id] = []

		# Get the start function of the mode and search for "function switch:maps/choose_map_for {id:"block_party", maps:["pitch_creep_1","octogone_nether_ice"]}"
		function_content: str = Mem.ctx.data.functions.get(start_file + "start_common", Function()).text.strip()
		if not function_content:
			function_content = Mem.ctx.data.functions.get(start_file + "choose_map_for", Function()).text.strip()
			if not function_content:
				function_content = Mem.ctx.data.functions[start_file + "start"].text.strip()

		splitted: list[str] = function_content.split(CHOOSE_MAP_FOR)
		if len(splitted) > 1:
			maps_str: str = splitted[1].split("\n")[0].split("maps:")[1].split("}")[0]
			modes_usage[mode.id] = json.loads(maps_str)

	# Now, generate the maps_usage dictionary
	maps_usage: dict[str, list[str]] = {}
	for map_name in generated_maps:
		maps_usage[map_name] = []
		for mode_id, maps_of_mode in modes_usage.items():
			if map_name in maps_of_mode:
				maps_usage[map_name].append(mode_id)

	# Sort the maps_usage dictionary by the length of the lists
	maps_usage = dict(sorted(maps_usage.items(), key=lambda item: len(item[1])))

	# Write the map_usage.json file
	with stp.super_open(path, "w") as f:
		f.write(stp.json_dump([maps_usage, modes_usage], max_level=2))

