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

