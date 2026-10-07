""" The first and last lines of the progressive regeneration of a map. """
# Imports
import stouputils as stp
from stewbeet.core import Mem, write_function

from .coordinates import convert_tick_to_strings
from .shared_memory import SharedMemory


# Functions
def write_first_lines_of_regenerate(name: str, base_condition: str, splitted_coordinates: list[list[int]]) -> None:
	""" Writes the "regenerate.mcfunction" file
	Args:
		name (str)					: The name of the map base_condition (str)		: The base_condition condition of the command splitted_coordinates (list)	: The splitted coordinates
	Returns:
		(TextIOWrapper)				: The file
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/survival/{name}/regenerate"

	# Write the first lines
	write_function(path, f'\nscoreboard players add #rg_{name} {ns}.data 1')
	write_function(path, f"{base_condition} 1 run data modify storage {ns}:maps to_regenerate.{name} set value 2b")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(path, f"{base_condition} 1 in minecraft:overworld run forceload add {x1} {x2} {z1} {z2}")
		write_function(path, f"{base_condition} 1 in {ns}:game run forceload add {x1} {x2} {z1} {z2}")


def write_last_lines_of_regenerate(name: str, namespace: str, base_condition: str, splitted_coordinates: list[list[int]], xyz: tuple[int, int, int], last_tick: int, divider: int, suffix: str = "") -> None:
	""" Writes the last lines of the "regenerate.mcfunction" file
	Args:
		f (TextIOWrapper)			: The file name (str)					: The name of the map namespace (str)				: The namespace of the map base_condition (str)		: The base_condition condition of the command splitted_coordinates (list)	: The splitted coordinates xyz (tuple)					: The coordinates of the regeneration area last_tick (int)				: The last tick divider (int)				: The divider of the regeneration area suffix (str)				: The suffix of the print function (like "[/clone]" or "[/fill]")
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/survival/{namespace}/regenerate"

	# Get the time string and the tellraw command
	timeStr, tellraw = convert_tick_to_strings(last_tick, name)

	# Print the time
	if SharedMemory.PRINT_PROGRESS:
		stp.progress(f"{stp.YELLOW}'{name}'{stp.GREEN} will take {stp.RED}{last_tick}{stp.GREEN} ticks to regenerate {stp.RED}[{timeStr}]{stp.GREEN} with a divider of {stp.YELLOW}{divider}{stp.RESET} {suffix}")

	## Write the last lines
	# Write the scoreboard and summon commands
	x, y, z = xyz
	write_function(path, f"""
{base_condition} 1 run scoreboard players set #rg_{namespace}_y {ns}.data {y}
{base_condition} 1 run scoreboard players set #rg_{namespace}_mod {ns}.data 0
{base_condition} ..{last_tick} summon marker run function {ns}:maps/survival/{namespace}/regeneration_on_marker
""")

	# Write the kill command
	last_tick += 1
	write_function(path, f"""
{base_condition} {last_tick}.. in {ns}:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
{base_condition} {last_tick}.. run data remove storage {ns}:maps to_regenerate.{namespace}
""")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(path, f"""
{base_condition} {last_tick}.. in minecraft:overworld run forceload remove {x1} {x2} {z1} {z2}
{base_condition} {last_tick}.. in {ns}:game run forceload remove {x1} {x2} {z1} {z2}
""".strip())

	# Write the tellraw command
	encoded_name: str = name.replace('"', r'\"')
	write_function(path, f"""
{base_condition} {last_tick}.. run {tellraw}
{base_condition} {last_tick}.. run function {ns}:engine/log_message/apply {{message:"Map `{encoded_name}` just regenerated!"}}
""")

	# Write the door regeneration command, the reset command and the schedule command
	write_function(path, f"""
{base_condition} {last_tick}.. in {ns}:game run function {ns}:maps/regenerate_doors_macro {{name:"{namespace}"}}
{base_condition} {last_tick}.. run scoreboard players reset #rg_{namespace} {ns}.data
{base_condition} 1.. run schedule function {ns}:maps/survival/{namespace}/regenerate 1t
""")

