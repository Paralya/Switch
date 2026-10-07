""" Declare a survival map, regenerated with /clone or /fill. """
# Imports
import stouputils as stp
from stewbeet.core import Mem, write_function

from .coordinates import (
	calculate_divider,
	create_splitted_coordinates,
	create_tp_coords_string_from_view,
	get_middle_from_start_and_end,
)
from .map_files import create_main_file, create_spread_players_file, create_teleport_players_file, scan_every_door_in_map
from .regeneration import write_first_lines_of_regenerate, write_last_lines_of_regenerate
from .shared_memory import generated_maps, survival_maps


# Functions
# Create the function that generates a folder for a gamemode with regeneration using /clone
def check_view_and_identity(view: tuple[float, float, float, float, float], identity: tuple[str, ...]) -> tuple[str, str, str]:
	""" Validate the view tuple (5 elements) and unpack (namespace, name, credits) from identity (credits optional). """
	assert len(view) == 5, f"The view tuple must contain 5 elements: (x, y, z, yaw, pitch), got {len(view)} for {identity[0]}."
	return identity[0], identity[1], identity[2] if len(identity) > 2 else ""


def write_map_intro_spread(namespace: str, view: tuple[float, float, float, float, float], name: str, credits: str) -> None:
	""" Write the per-map intro_spread function (shared by clone_survival / fill_survival).

	Args:
		namespace	(str)	: The map namespace view		(tuple)	: The coordinates and orientation to teleport the players name		(str)	: The display name of the map credits		(str)	: The credits of the map
	"""
	# The dimension MUST be explicit: the cinematic spectate entity is summoned in the execution dimension and the players are released at its position when the cinematic ends, so running this from a server context (schedule/tick) would drop every player in the overworld copy.
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:maps/survival/{namespace}/intro_spread", f"""
execute in {ns}:game positioned {view[0]} {view[1]} {view[2]} rotated {view[3]} {view[4]} run function #cinemalya:v1/intro {{with:{{selector:"@a[tag=!detached]",display_time:130,duration:50,title:"{name}",subtitle:"{credits}",particle:"minecraft:glow"}}}}
""")


def clone_survival(
	paste_start_height: int,
	start_pos: tuple[int, ...],
	end_pos: tuple[int, ...],
	identity: tuple[str, ...],
	view: tuple[float, float, float, float, float],
	racing_pos: tuple[tuple[float, ...], int, int] | tuple[()] = ()
) -> None:
	""" Generates a folder for a gamemode using /clone for regeneration
	Args:
		paste_start_height	(int)	: The y coordinate where the regeneration starts start_pos			(tuple)	: The coordinates of the start position end_pos				(tuple)	: The coordinates of the end position identity			(tuple)	: The identity of the gamemode (namespace, name, credits) view				(tuple)	: The coordinates and orientation to teleport the players racing_pos			(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	ns: str = Mem.ctx.project_id
	# Validate view + extract identity (namespace, name, credits)
	namespace, name, credits = check_view_and_identity(view, identity)

	# DEBUG
	if True:
		yaw: float = view[-2] % 360
		if not (-180 < view[-2] < 360):
			stp.warning(f"Map '{namespace}': Yaw is {view[-2]} instead of {yaw:.2f}.")

	## Calculate the divider depending on the start and end positions
	divider = calculate_divider(start_pos, end_pos)

	## Create the base_condition variable (for the conditions)
	base_condition = f"execute if score #rg_{namespace} {ns}.data matches"

	## Create the "main.mcfunction" file and the "teleport_players.mcfunction" file
	x, y, z = get_middle_from_start_and_end(start_pos, end_pos)
	create_main_file(namespace, create_tp_coords_string_from_view(view), racing_pos)
	create_teleport_players_file(namespace, view, racing_pos)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = create_splitted_coordinates(start_pos, end_pos, divider)

	# More variables
	y = start_pos[1]                            # The first y coordinate
	minY = paste_start_height                   # The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]     # The y coordinate where the regeneration ends

	# Write the first lines
	write_first_lines_of_regenerate(namespace, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	# Create the file
	path: str = f"{ns}:maps/survival/{namespace}/regeneration_on_marker"
	write_function(path, f"\nexecute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{namespace}_y {ns}.data")

	# Write the clone and particle commands
	particle_count = 250
	dy = paste_start_height - start_pos[1]
	for i, k in enumerate(splitted_coordinates):
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		write_function(path, f"""
execute if score #rg_{namespace}_mod {ns}.data matches {i} at @s in {ns}:game run particle cloud {k[0] + dx} ~{dy + 0.5} {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force
execute if score #rg_{namespace}_mod {ns}.data matches {i} at @s run clone from minecraft:overworld {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} to {ns}:game {k[0]} ~{dy} {k[1]} strict replace force
""")

	# Write kill item entities command & the scoreboard commands
	write_function(path, f"""
scoreboard players add #rg_{namespace}_mod {ns}.data 1
execute if score #rg_{namespace}_mod {ns}.data matches {len(splitted_coordinates)} in {ns}:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
execute if score #rg_{namespace}_mod {ns}.data matches {len(splitted_coordinates)} run scoreboard players add #rg_{namespace}_y {ns}.data 1
execute if score #rg_{namespace}_mod {ns}.data matches {len(splitted_coordinates)} run scoreboard players set #rg_{namespace}_mod {ns}.data 0

kill @s
""")

	# Write the last lines
	i = (maxY - minY + 1) * len(splitted_coordinates)
	write_last_lines_of_regenerate(name, namespace, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/clone]")

	# Write the spread_players file
	create_spread_players_file(namespace, start_pos, end_pos, paste_start_height)

	# Write the scan_doors file
	scan_every_door_in_map(namespace, start_pos, end_pos, paste_start_height, splitted_coordinates)

	# Write the intro_spread file
	write_map_intro_spread(namespace, view, name, credits)

	# Add the map to the list of the generated maps and return
	generated_maps.append(namespace)
	survival_maps.append(namespace)


# Create the function that generates a folder for a gamemode with regeneration using the fill command
def fill_survival(
	start_pos: tuple[int, ...],
	end_pos: tuple[int, ...],
	identity: tuple[str, ...],
	block_that_replace: str,
	block_tag_to_replace: str,
	view: tuple[float, float, float, float, float],
	copy_structures: list[tuple[tuple[int, int, int], tuple[int, int, int]]] | None = None
) -> None:
	""" Generate a folder for a gamemode with regeneration using the fill command

	Args:
		identity				(tuple)	: The identity of the gamemode (namespace, name, credits) start_pos				(tuple)	: The start position of the regeneration area end_pos					(tuple)	: The end position of the regeneration area block_that_replace		(str)	: The block that replace the blocks with the tag block_tag_to_replace	(str)	: The block tag to replace view					(tuple)	: The coordinates and orientation to teleport the players copy_structures			(list)	: Boxes (start, end) of permanent structures cloned from the
			overworld source map into the game dimension at the end of the regeneration (the fill
			regeneration only replaces the tagged blocks, it never restores the map structures)
	"""
	ns: str = Mem.ctx.project_id
	# Validate view + extract identity (namespace, name, credits)
	namespace, name, credits = check_view_and_identity(view, identity)

	## Calculate the divider depending on the start and end positions
	divider = calculate_divider(start_pos, end_pos)

	## Create the base_condition variable
	base_condition = f"execute if score #rg_{namespace} {ns}.data matches"

	## Create the "main.mcfunction" file and the "teleport_players.mcfunction" file
	x, y, z = get_middle_from_start_and_end(start_pos, end_pos)
	create_main_file(namespace, create_tp_coords_string_from_view(view))
	create_teleport_players_file(namespace, view)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = create_splitted_coordinates(start_pos, end_pos, divider)

	# More variables
	y = start_pos[1]                            # The first y coordinate
	minY = y                                    # The y coordinate where the regeneration starts

	# Write the first lines
	write_first_lines_of_regenerate(namespace, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	path: str = f"{ns}:maps/survival/{namespace}/regeneration_on_marker"
	write_function(path, f"\nexecute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{namespace}_y {ns}.data\n")

	# Write the clone and particle commands
	particle_count = int(250 / len(splitted_coordinates)) + 1
	for k in splitted_coordinates:
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		write_function(path, f"""
execute at @s in {ns}:game run particle cloud {k[0] + dx} ~1 {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force
execute at @s in {ns}:game run fill {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} {block_that_replace} replace {block_tag_to_replace}
""")

	# Write kill item entities command & the scoreboard commands
	write_function(path, f"""
execute in {ns}:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
scoreboard players add #rg_{namespace}_y {ns}.data 1

kill @s
""")

	# Write the last lines
	i = (end_pos[1] - minY) + 1

	# Clone the permanent structures from the overworld source map once the fill pass is done: both dimensions are still forceloaded at this tick,
	# and these lines run before the forceload removals written by write_last_lines_of_regenerate
	if copy_structures:
		regenerate_path: str = f"{ns}:maps/survival/{namespace}/regenerate"
		for (sx, sy, sz), (ex, ey, ez) in copy_structures:
			# Split the box in y slices to stay under the 32768 blocks limit of the clone command
			step: int = max(1, 32768 // ((ex - sx + 1) * (ez - sz + 1)))
			for cy in range(sy, ey + 1, step):
				top: int = min(cy + step - 1, ey)
				write_function(regenerate_path, f"{base_condition} {i + 1} in {ns}:game run clone from minecraft:overworld {sx} {cy} {sz} {ex} {top} {ez} to {ns}:game {sx} {cy} {sz} strict replace force")

	write_last_lines_of_regenerate(name, namespace, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/fill]")

	# Write the spread_players file
	create_spread_players_file(namespace, start_pos, end_pos, paste_start_height = y)

	# Write the intro_spread file
	write_map_intro_spread(namespace, view, name, credits)

	# Add the map to the list of the generated maps and return
	generated_maps.append(namespace)

