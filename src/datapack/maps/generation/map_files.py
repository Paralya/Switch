""" The per-map functions: main file, teleports, spreadplayers and door scan. """
# Imports
from typing import Any

from stewbeet.core import Mem, write_function

from .coordinates import create_tp_coords_string_from_view, get_middle_from_start_and_end
from .shared_memory import SharedMemory


# Functions
def create_main_file(name: str, tp_coords: str = "", racing_pos: tuple[Any, ...] = ()) -> None:
	""" Creates the "main.mcfunction" file

	Args:
		name (str)	: The name of the map racing_pos	(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/survival/{name}/main"

	# Write the first line
	write_function(path, f'\nsummon marker 0 0 0 {{Tags:["{ns}.selected_map"]}}')

	# If there is no race
	if len(racing_pos) == 0:
		write_function(path, f"execute as @e[type=marker,tag={ns}.selected_map] at @s run function {ns}:maps/survival/{name}/teleport_players")
	else:
		write_function(path, f"execute as @e[type=marker,tag={ns}.selected_map] run data modify entity @s Pos set value {tp_coords}\n")
		write_function(path, f"scoreboard players set #count {ns}.data 0")
		write_function(path, f"execute as @a[tag=!detached,sort=random] run function {ns}:maps/survival/{name}/teleport_players\n")
		write_function(path, f"execute if score #is_race {ns}.data matches 1 in {ns}:game run function {ns}:maps/survival/{name}/if_race")


def create_teleport_players_file(name: str, view: tuple[float, float, float, float, float], racing_pos: tuple[tuple[float, ...], int, int] | tuple[()] = ()) -> None:
	""" Creates the "teleport_players.mcfunction" file\n
	Args:
		name 		(str)	: The name of the map view		(tuple)	: The view position (x, y, z, yaw, pitch) racing_pos	(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps/survival/{name}/teleport_players"

	# If there is no race
	if len(racing_pos) == 0:
		write_function(path, f'data modify entity @s Pos set value {create_tp_coords_string_from_view(view)}')
		write_function(path, f'execute at @s in {ns}:game run tp @s ~ ~ ~')
		write_function(path, 'execute at @s run tp @a[tag=!detached] ~ ~ ~')
		write_function(path, f'execute if score #do_spreadplayers {ns}.data matches 1 run function {ns}:maps/survival/{name}/spread_players')
		write_function(path, f'scoreboard players reset #do_spreadplayers {ns}.data')
	else:
		# Get variables
		x, y, z = racing_pos[0]
		orientation = (360 + racing_pos[1]) % 360   # negative to positive, ex: -90 -> 270
		count = racing_pos[2]

		# Write the lines
		for i in range(count):

			# Calculate the coordinates
			j = i % 4
			k = i // 4
			coords = ""
			if orientation == 0:
				coords = f"~{j*2} ~ ~-{k*2}"
			elif orientation == 90:
				coords = f"~{k*2} ~ ~-{j*2}"
			elif orientation == 180:
				coords = f"~{j*2} ~ ~{k*2}"
			elif orientation == 270:
				coords = f"~-{k*2} ~ ~{j*2}"

			# Write the line
			write_function(path, f"execute if score #count {ns}.data matches {i} in {ns}:game positioned {x} {y} {z} run tp @s {coords} {orientation} 0")

		# Write the last lines
		write_function(path, f'\nscoreboard players add #count {ns}.data 1')
		write_function(path, f"scoreboard players operation #count {ns}.data %= #{count} {ns}.data")

	# Add a file to teleport @s to the coordinates
	path: str = f"{ns}:maps/survival/{name}/tp_to_coords"
	x, y, z, yaw, pitch = view
	write_function(path, f"execute in minecraft:overworld run tp @s {x} {y} {z} {yaw} {pitch}")


def create_spread_players_file(name: str, start_pos: tuple[int, ...], end_pos: tuple[int, ...], paste_start_height: int) -> None:
	""" Creates the "spread_players.mcfunction" and "spread_one_player.mcfunction" files\n
	Args:
		name (str)					: The name of the map start_pos (tuple)			: The start position of the regeneration area end_pos (tuple)				: The end position of the regeneration area paste_start_height (int)	: The height where the map is pasted
	"""
	ns: str = Mem.ctx.project_id
	# Get variables
	x, _, z = get_middle_from_start_and_end(start_pos, end_pos, paste_start_height)
	dx: int = end_pos[0] - x
	dz: int = end_pos[2] - z
	maxRange: int = min(dx, dz)
	if maxRange < 10:
		maxRange = 10
	max_height: int = (end_pos[1] - start_pos[1]) + paste_start_height - 10
	y: int = start_pos[1]
	dy: int = paste_start_height - 1 - y

	## Spread players file
	# Create the file
	path: str = f"{ns}:maps/survival/{name}/spread_players"

	# Write the spreadplayers command and the assurance commands
	write_function(path, f"""
execute in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @a[tag=!detached]

## Assurance commands
""")
	for _ in range(SharedMemory.NB_SPREAD_PLAYERS):
		write_function(path, f"""
execute as @a[tag=!detached] at @s if entity @s[y={y},dy={dy}] in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
execute as @a[tag=!detached] at @s if block ~ ~-2 ~ barrier in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
execute as @a[tag=!detached] at @s if block ~ ~-1 ~ #{ns}:not_spreadplayers in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
""")

	## Spread one player file
	path: str = f"{ns}:maps/survival/{name}/spread_one_player"
	write_function(path, f"""
execute in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s

## Assurance commands
""")
	for _ in range(SharedMemory.NB_SPREAD_PLAYERS):
		write_function(path, f"""
execute at @s if entity @s[y={y},dy={dy}] in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
execute at @s if block ~ ~-2 ~ barrier in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
execute at @s if block ~ ~-1 ~ #{ns}:not_spreadplayers in {ns}:game run spreadplayers {x} {z} 0 {maxRange} under {max_height} false @s
""")


def scan_every_door_in_map(name: str, start_pos: tuple[int, ...], end_pos: tuple[int, ...], paste_start_height: int, splitted_coordinates: list[list[int]]) -> None:
	""" Creates the "scan_doors.mcfunction" file.
	It acts almost like the regeneration file\n
	Args:
		name (str)					: The name of the map start_pos (tuple)			: The start position of the regeneration area end_pos (tuple)				: The end position of the regeneration area paste_start_height (int)	: The height where the map is pasted splitted_coordinates (list)	: The splitted coordinates of the regeneration area
	"""
	ns: str = Mem.ctx.project_id
	base_cond = f"execute if score #scan_{name} {ns}.data matches"

	# Create the file
	path: str = f"{ns}:maps/survival/{name}/scan_doors"
	write_function(path, f"\nscoreboard players add #scan_{name} {ns}.data 1")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(path, f"""
{base_cond} 1 in minecraft:overworld run forceload add {x1} {x2} {z1} {z2}
{base_cond} 1 in {ns}:game run forceload add {x1} {x2} {z1} {z2}
""")

	# Init values
	total_blocks_to_scan = (end_pos[0] - start_pos[0] - 1) * (end_pos[1] - start_pos[1] - 1) * (end_pos[2] - start_pos[2] - 1)
	total_loops = total_blocks_to_scan // SharedMemory.DOOR_BLOCKS_PER_SECOND
	if (total_blocks_to_scan % SharedMemory.DOOR_BLOCKS_PER_SECOND) > 0:
		total_loops += 1
	write_function(path, f"""
{base_cond} 1 run data modify storage {ns}:maps to_scan.{name} set value 2b
{base_cond} 1 run scoreboard players set #start_x_{name} {ns}.data {start_pos[0] + 1}
{base_cond} 1 run scoreboard players set #start_y_{name} {ns}.data {start_pos[1] + 1}
{base_cond} 1 run scoreboard players set #start_z_{name} {ns}.data {start_pos[2] + 1}
{base_cond} 1 run scoreboard players set #end_x_{name} {ns}.data {end_pos[0] - 1}
{base_cond} 1 run scoreboard players set #end_y_{name} {ns}.data {end_pos[1] - 1}
{base_cond} 1 run scoreboard players set #end_z_{name} {ns}.data {end_pos[2] - 1}
{base_cond} 1 run scoreboard players operation #curr_x_{name} {ns}.data = #start_x_{name} {ns}.data
{base_cond} 1 run scoreboard players operation #curr_y_{name} {ns}.data = #start_y_{name} {ns}.data
{base_cond} 1 run scoreboard players operation #curr_z_{name} {ns}.data = #start_z_{name} {ns}.data
{base_cond} 1 run data modify storage {ns}:doors {name} set value []
""")

	# Launch the scan on the next block
	delay = 30
	write_function(path, f"""
{base_cond} {delay}.. run scoreboard players set #blocks_in_loop {ns}.data {SharedMemory.DOOR_BLOCKS_PER_SECOND}
{base_cond} {delay}.. summon marker run function {ns}:maps/survival/{name}/scan_doors_on_marker
""")

	# Finish scan
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(path, f"""
{base_cond} {total_loops + 30} in minecraft:overworld run forceload remove {x1} {x2} {z1} {z2}
{base_cond} {total_loops + 30} in {ns}:game run forceload remove {x1} {x2} {z1} {z2}
""")
	write_function(path, f"""
{base_cond} {total_loops + 30} run tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Doors of map '","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"' just been scanned in ","color":"yellow"}},{{"text":"{(total_loops + 30) // 20}","color":"gold"}},{{"text":"s","color":"yellow"}}]
{base_cond} {total_loops + 30} run data remove storage {ns}:maps to_scan.{name}
{base_cond} {total_loops + 30} run scoreboard players reset #scan_{name} {ns}.data

{base_cond} 1.. run schedule function {ns}:maps/survival/{name}/scan_doors 1t
""")

	## Create the "scan_doors_on_marker.mcfunction" file
	path: str = f"{ns}:maps/survival/{name}/scan_doors_on_marker"
	write_function(path, f"""
execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_{name} {ns}.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_{name} {ns}.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_{name} {ns}.data
scoreboard players add #curr_x_{name} {ns}.data 1
execute if score #curr_x_{name} {ns}.data > #end_x_{name} {ns}.data run scoreboard players add #curr_y_{name} {ns}.data 1
execute if score #curr_x_{name} {ns}.data > #end_x_{name} {ns}.data run scoreboard players operation #curr_x_{name} {ns}.data = #start_x_{name} {ns}.data
execute if score #curr_y_{name} {ns}.data > #end_y_{name} {ns}.data run scoreboard players add #curr_z_{name} {ns}.data 1
execute if score #curr_y_{name} {ns}.data > #end_y_{name} {ns}.data run scoreboard players operation #curr_y_{name} {ns}.data = #start_y_{name} {ns}.data
execute at @s if block ~ ~ ~ #minecraft:doors run function {ns}:maps/add_door_to_storage {{name:"{name}",additional_height:{paste_start_height - start_pos[1]}}}

scoreboard players remove #blocks_in_loop {ns}.data 1
execute if score #blocks_in_loop {ns}.data matches 1.. if score #curr_z_{name} {ns}.data < #end_z_{name} {ns}.data run function {ns}:maps/survival/{name}/scan_doors_on_marker
kill @s
""")

