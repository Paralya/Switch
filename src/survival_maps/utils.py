
# ruff: noqa: E501
# Imports
import json

import stouputils as stp
from beet import Function
from stewbeet.core import Mem, write_function

from .shared_memory import SharedMemory, generated_maps, survival_maps


# Functions
def convert_tick_to_strings(tick: int, name: str) -> tuple:
	""" Converts "tick" in entry to formatted strings
	such as "XX seconds (XXmXXs)" or "XX seconds"
	if the tick is less than 60
	and a tellraw command to display the time\n
	Args:
		tick (int): The tick to convert
		name (str): The name of the map
	Returns:
		(str, str): The formatted strings
	"""
	# Get variables
	secs: int = tick // 20
	isec: int = secs % 60
	imin: int = secs // 60

	# Convert the tick to a string
	secsString: str = str(isec)
	if isec < 10 and imin > 0:
		secsString = f"0{isec}"
	minsString: str = str(imin)

	# Create the parenthesis string
	parenthesis: str = ""
	if secs >= 60:
		parenthesis = f" ({minsString}m{secsString}s)"

	# Create the tellraw string
	if imin > 0:
		tellraw: str = f'tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true}},{{"text":" Map \'","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"\' regenerated in ","color":"yellow"}},{{"text":"{minsString}","color":"gold"}},{{"text":"m","color":"yellow"}},{{"text":"{secsString}","color":"gold"}},{{"text":"s","color":"yellow"}}]\n'
	else:
		tellraw: str = f'tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true}},{{"text":" Map \'","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"\' regenerated in ","color":"yellow"}},{{"text":"{secsString}","color":"gold"}},{{"text":"s","color":"yellow"}}]\n'

	# Return
	return (f"{secs} seconds{parenthesis}", tellraw)


def calculate_divider(start_pos: tuple, end_pos: tuple) -> int:
	""" Calculates the divider of the regeneration area depending on the area
	The more the area is big, the more the divider is big
	The divider is calculated so that the area is divided into 3200 blocks

	Args:
		start_pos (tuple)	: The start position of the regeneration area
		end_pos (tuple)		: The end position of the regeneration area
	Returns:
		(int)				: The divider
	"""
	area: int = (end_pos[0] - start_pos[0]) * (end_pos[2] - start_pos[2])
	return (area // SharedMemory.BLOCKS_PER_DIVISION + 2)


def create_tp_coords_string_from_start_and_end(start_pos: tuple[int, ...], end_pos: tuple[int, ...], paste_start_height: int = 0) -> tuple[str, int, int, int]:
	""" Creates a string with the tp coordinates\n
	Args:
		start_pos (tuple)		: The start position of the regeneration area
		end_pos (tuple)			: The end position of the regeneration area
	Returns:
		(str, int, int, int)	: The tp coordinates string and the x, y and z coordinates
	"""
	# x and z
	x = int((start_pos[0] + end_pos[0]) / 2)
	z = int((start_pos[2] + end_pos[2]) / 2)

	# Calculate the y coordinate
	decal = paste_start_height - start_pos[1]
	a = start_pos[1] + decal
	b = end_pos[1] + decal
	middle_y = (a + b) / 2
	y = int(middle_y)

	# Return
	return f"[{x}.5d, {y}.5d, {z}.5d]", x, y, z


def create_tp_coords_string_from_xyz(xyz: tuple) -> str:
	""" Creates a string with the tp coordinates\n
	Args:
		x (int)		: The x coordinate
		y (int)		: The y coordinate
		z (int)		: The z coordinate
	Returns:
		(str)		: The tp coordinates string
	"""
	x, y, z = xyz
	return f"[{x}.5d, {y}.5d, {z}.5d]"


def create_main_file(name: str, tp_coords: str = "", racing_pos: tuple[tuple, int, int] = ()) -> None:
	""" Creates the ".mcfunction" file

	Args:
		name (str)	: The name of the map
		racing_pos	(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	PATH: str = f"switch:maps/survival/{name}/main"

	# Write the first line
	write_function(PATH, '\nsummon marker 0 0 0 {Tags:["switch.selected_map"]}')

	# If there is no race
	if len(racing_pos) == 0:
		write_function(PATH, f"execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/{name}/teleport_players")
	else:
		write_function(PATH, f"execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value {tp_coords}\n")
		write_function(PATH, "scoreboard players set #count switch.data 0")
		write_function(PATH, f"execute as @a[tag=!detached,sort=random] run function switch:maps/survival/{name}/teleport_players\n")
		write_function(PATH, f"execute if score #is_race switch.data matches 1 run function switch:maps/survival/{name}/if_race")


def create_teleport_players_file(name: str, tp_coords: str, racing_pos: tuple[tuple, int, int] = ()) -> None:
	""" Creates the "teleport_players.mcfunction" file\n
	Args:
		name 		(str)	: The name of the map
		tp_coords 	(str)	: The tp coordinates string "[{x}.5d, {y}.5d, {z}.5d]"
		racing_pos	(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	PATH: str = f"switch:maps/survival/{name}/teleport_players"

	# If there is no race
	if len(racing_pos) == 0:
		write_function(PATH, f'data modify entity @s Pos set value {tp_coords}')
		write_function(PATH, 'execute at @s in switch:game run tp @s ~ ~ ~')
		write_function(PATH, 'execute at @s run tp @a[tag=!detached] ~ ~ ~')
		write_function(PATH, f'execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/{name}/spread_players')
		write_function(PATH, 'scoreboard players reset #do_spreadplayers switch.data')
	else:
		# Get variables
		x, y, z = racing_pos[0]
		orientation = (360 + racing_pos[1]) % 360	# negative to positive, ex: -90 -> 270
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
			write_function(PATH, f"execute if score #count switch.data matches {i} in switch:game positioned {x} {y} {z} run tp @s {coords} {orientation} 0")

		# Write the last lines
		write_function(PATH, '\nscoreboard players add #count switch.data 1')
		write_function(PATH, f"scoreboard players operation #count switch.data %= #{count} switch.data")

	# Add a file to teleport @s to the coordinates
	PATH: str = f"switch:maps/survival/{name}/tp_to_coords"
	x, y, z = tp_coords.replace("[", "").replace("]", "").replace("d", "").split(", ")
	write_function(PATH, f"execute in minecraft:overworld run tp @s {x} {y} {z}")


def create_splitted_coordinates(start_pos: tuple, end_pos: tuple, divider: int) -> list[list]:
	""" Creates a list with the splitted coordinates of
	the regeneration area depending on the divider argument

	Args:
		start_pos (tuple)	: The start position of the regeneration area
		end_pos (tuple)		: The end position of the regeneration area
		divider (int)		: How the coordinates are splitted (default: 1)
	Returns:
		(list[list])	: The splitted coordinates
	"""
	# Prepare the start and end coordinates
	c1 = [start_pos[0], start_pos[2], end_pos[0], end_pos[2]]
	d = (c1[2] - c1[0]) / divider

	# Create the splitted coordinates
	c = []
	for i in range(divider):
		# Calculate x1 (the first x coordinate of the clone command)
		x1 = round(c1[0] + d*i)
		# Calculate x2, z1 and z2
		x2 = c1[1]
		z1 = round(c1[0] + d*(i+1))
		z2 = c1[3]

		# Append the coordinates to the list
		c.append([ x1, x2, z1, z2 ])

	# Return
	return c


def write_first_lines_of_regenerate(name: str, base_condition: str, splitted_coordinates: list) -> None:
	""" Writes the "regenerate.mcfunction" file
	Args:
		name (str)					: The name of the map
		base_condition (str)		: The base_condition condition of the command
		splitted_coordinates (list)	: The splitted coordinates
	Returns:
		(TextIOWrapper)				: The file
	"""
	PATH: str = f"switch:maps/survival/{name}/regenerate"

	# Write the first lines
	write_function(PATH, f'\nscoreboard players add #rg_{name} switch.data 1')
	write_function(PATH, f"{base_condition} 1 run data modify storage switch:maps to_regenerate.{name} set value 2b")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(PATH, f"{base_condition} 1 in minecraft:overworld run forceload add {x1} {x2} {z1} {z2}")
		write_function(PATH, f"{base_condition} 1 in switch:game run forceload add {x1} {x2} {z1} {z2}")


def write_last_lines_of_regenerate(name: str, base_condition: str, splitted_coordinates: list, xyz: tuple, last_tick: int, divider: int, suffix: str = "") -> None:
	""" Writes the last lines of the "regenerate.mcfunction" file
	Args:
		f (TextIOWrapper)			: The file
		name (str)					: The name of the map
		base_condition (str)		: The base_condition condition of the command
		splitted_coordinates (list)	: The splitted coordinates
		xyz (tuple)					: The coordinates of the regeneration area
		last_tick (int)				: The last tick
		divider (int)				: The divider of the regeneration area
		suffix (str)				: The suffix of the print function (like "[/clone]" or "[/fill]")
	"""
	PATH: str = f"switch:maps/survival/{name}/regenerate"

	# Get the time string and the tellraw command
	timeStr, tellraw = convert_tick_to_strings(last_tick, name)

	# Print the time
	if SharedMemory.PRINT_PROGRESS:
		stp.progress(f"{stp.YELLOW}'{name}'{stp.GREEN} will take {stp.RED}{last_tick}{stp.GREEN} ticks to regenerate {stp.RED}[{timeStr}]{stp.GREEN} with a divider of {stp.YELLOW}{divider}{stp.RESET} {suffix}")

	## Write the last lines
	# Write the scoreboard and summon commands
	x, y, z = xyz
	write_function(PATH, f"""
{base_condition} 1 run scoreboard players set #rg_{name}_y switch.data {y}
{base_condition} 1 run scoreboard players set #rg_{name}_mod switch.data 0
{base_condition} ..{last_tick} summon marker run function switch:maps/survival/{name}/regeneration_on_marker
""")

	# Write the kill command
	last_tick += 1
	write_function(PATH, f"""
{base_condition} {last_tick}.. in switch:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
{base_condition} {last_tick}.. run data remove storage switch:maps to_regenerate.{name}
""")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(PATH, f"""
{base_condition} {last_tick}.. in minecraft:overworld run forceload remove {x1} {x2} {z1} {z2}
{base_condition} {last_tick}.. in switch:game run forceload remove {x1} {x2} {z1} {z2}
""")

	# Write the tellraw command
	write_function(PATH, f"""
{base_condition} {last_tick}.. run {tellraw}
{base_condition} {last_tick}.. run data modify storage switch:main MessageToLog set value '{{\"text\":\"Map `{name}` just regenerated!\"}}'
{base_condition} {last_tick}.. run function switch:engine/log_message/apply
""")

	# Write the door regeneration command, the reset command and the schedule command
	write_function(PATH, f"""
{base_condition} {last_tick}.. in switch:game run function switch:maps/regenerate_doors_macro {{name:\"{name}\"}}
{base_condition} {last_tick}.. run scoreboard players reset #rg_{name} switch.data
{base_condition} 1.. run schedule function switch:maps/survival/{name}/regenerate 1t
""")


def create_spread_players_file(name: str, start_pos: tuple[int, ...], end_pos: tuple[int, ...], paste_start_height: int) -> None:
	""" Creates the "spread_players.mcfunction" and "spread_one_player.mcfunction" files\n
	Args:
		name (str)					: The name of the map
		start_pos (tuple)			: The start position of the regeneration area
		end_pos (tuple)				: The end position of the regeneration area
		paste_start_height (int)	: The height where the map is pasted
	"""

	# Get variables
	_, x, _, z = create_tp_coords_string_from_start_and_end(start_pos, end_pos, paste_start_height)
	dx: int = end_pos[0] - x
	dz: int = end_pos[2] - z
	maxRange: int = min(dx, dz)
	if maxRange < 10:
		maxRange = 10
	spread_distance: int = maxRange // 2
	max_height: int = end_pos[1] + paste_start_height - 3
	y: int = start_pos[1]
	dy: int = paste_start_height - 1 - y

	## Spread players file
	# Create the file
	PATH: str = f"switch:maps/survival/{name}/spread_players"

	# Write the spreadplayers command and the assurance commands
	write_function(PATH, f"""
execute in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @a[tag=!detached]

## Assurance commands
""")
	for _ in range(SharedMemory.NB_SPREAD_PLAYERS):
		write_function(PATH, f"""
execute as @a[tag=!detached] at @s if entity @s[y={y},dy={dy}] in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
execute as @a[tag=!detached] at @s if block ~ ~-2 ~ barrier in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
execute as @a[tag=!detached] at @s if block ~ ~-1 ~ #switch:not_spreadplayers in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
""")

	## Spread one player file
	PATH: str = f"switch:maps/survival/{name}/spread_one_player"
	write_function(PATH, f"""
execute in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s

## Assurance commands
""")
	for _ in range(SharedMemory.NB_SPREAD_PLAYERS):
		write_function(PATH, f"""
execute at @s if entity @s[y={y},dy={dy}] in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
execute at @s if block ~ ~-2 ~ barrier in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
execute at @s if block ~ ~-1 ~ #switch:not_spreadplayers in switch:game run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s
""")


def scan_every_door_in_map(name: str, start_pos: tuple, end_pos: tuple, paste_start_height: int, splitted_coordinates: list) -> None:
	""" Creates the "scan_doors.mcfunction" file.
	It acts almost like the regeneration file\n
	Args:
		name (str)					: The name of the map
		start_pos (tuple)			: The start position of the regeneration area
		end_pos (tuple)				: The end position of the regeneration area
		paste_start_height (int)	: The height where the map is pasted
		splitted_coordinates (list)	: The splitted coordinates of the regeneration area
	"""
	base_cond = f"execute if score #scan_{name} switch.data matches"

	# Create the file
	PATH: str = f"switch:maps/survival/{name}/scan_doors"
	write_function(PATH, f"\nscoreboard players add #scan_{name} switch.data 1")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(PATH, f"""
{base_cond} 1 in minecraft:overworld run forceload add {x1} {x2} {z1} {z2}
{base_cond} 1 in switch:game run forceload add {x1} {x2} {z1} {z2}
""")

	# Init values
	total_blocks_to_scan = (end_pos[0] - start_pos[0] - 1) * (end_pos[1] - start_pos[1] - 1) * (end_pos[2] - start_pos[2] - 1)
	total_loops = total_blocks_to_scan // SharedMemory.DOOR_BLOCKS_PER_SECOND
	if (total_blocks_to_scan % SharedMemory.DOOR_BLOCKS_PER_SECOND) > 0:
		total_loops += 1
	write_function(PATH, f"""
{base_cond} 1 run data modify storage switch:maps to_scan.{name} set value 2b
{base_cond} 1 run scoreboard players set #start_x_{name} switch.data {start_pos[0] + 1}
{base_cond} 1 run scoreboard players set #start_y_{name} switch.data {start_pos[1] + 1}
{base_cond} 1 run scoreboard players set #start_z_{name} switch.data {start_pos[2] + 1}
{base_cond} 1 run scoreboard players set #end_x_{name} switch.data {end_pos[0] - 1}
{base_cond} 1 run scoreboard players set #end_y_{name} switch.data {end_pos[1] - 1}
{base_cond} 1 run scoreboard players set #end_z_{name} switch.data {end_pos[2] - 1}
{base_cond} 1 run scoreboard players operation #curr_x_{name} switch.data = #start_x_{name} switch.data
{base_cond} 1 run scoreboard players operation #curr_y_{name} switch.data = #start_y_{name} switch.data
{base_cond} 1 run scoreboard players operation #curr_z_{name} switch.data = #start_z_{name} switch.data
{base_cond} 1 run data modify storage switch:doors {name} set value []
""")

	# Launch the scan on the next block
	delay = 30
	write_function(PATH, f"""
{base_cond} {delay}.. run scoreboard players set #blocks_in_loop switch.data {SharedMemory.DOOR_BLOCKS_PER_SECOND}
{base_cond} {delay}.. summon marker run function switch:maps/survival/{name}/scan_doors_on_marker
""")

	# Finish scan
	for x1, x2, z1, z2 in splitted_coordinates:
		write_function(PATH, f"""
{base_cond} {total_loops + 30} in minecraft:overworld run forceload remove {x1} {x2} {z1} {z2}
{base_cond} {total_loops + 30} in switch:game run forceload remove {x1} {x2} {z1} {z2}
""")
	write_function(PATH, f"""
{base_cond} {total_loops + 30} run tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true}},{{"text":" Doors of map '","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"' just been scanned in ","color":"yellow"}},{{"text":"{(total_loops + 30) // 20}","color":"gold"}},{{"text":"s","color":"yellow"}}]
{base_cond} {total_loops + 30} run data remove storage switch:maps to_scan.{name}
{base_cond} {total_loops + 30} run scoreboard players reset #scan_{name} switch.data

{base_cond} 1.. run schedule function switch:maps/survival/{name}/scan_doors 1t
""")

	## Create the "scan_doors_on_marker.mcfunction" file
	PATH: str = f"switch:maps/survival/{name}/scan_doors_on_marker"
	write_function(PATH, f"""
execute store result entity @s Pos[0] double 1 run scoreboard players get #curr_x_{name} switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #curr_y_{name} switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #curr_z_{name} switch.data
scoreboard players add #curr_x_{name} switch.data 1
execute if score #curr_x_{name} switch.data > #end_x_{name} switch.data run scoreboard players add #curr_y_{name} switch.data 1
execute if score #curr_x_{name} switch.data > #end_x_{name} switch.data run scoreboard players operation #curr_x_{name} switch.data = #start_x_{name} switch.data
execute if score #curr_y_{name} switch.data > #end_y_{name} switch.data run scoreboard players add #curr_z_{name} switch.data 1
execute if score #curr_y_{name} switch.data > #end_y_{name} switch.data run scoreboard players operation #curr_y_{name} switch.data = #start_y_{name} switch.data
execute at @s if block ~ ~ ~ #minecraft:doors run function switch:maps/add_door_to_storage {{name:"{name}",additional_height:{paste_start_height - start_pos[1]}}}

scoreboard players remove #blocks_in_loop switch.data 1
execute if score #blocks_in_loop switch.data matches 1.. if score #curr_z_{name} switch.data < #end_z_{name} switch.data run function switch:maps/survival/{name}/scan_doors_on_marker
kill @s
""")


# Create the function that generates a folder for a gamemode with regeneration using /clone
def clone_survival(
	paste_start_height: int,
	start_pos: tuple,
	end_pos: tuple,
	identity: tuple[str, ...],
	view: tuple[float, float, float, float, float],
	racing_pos: tuple[tuple, int, int] = ()
) -> None:
	""" Generates a folder for a gamemode using /clone for regeneration
	Args:
		paste_start_height	(int)	: The y coordinate where the regeneration starts
		start_pos			(tuple)	: The coordinates of the start position
		end_pos				(tuple)	: The coordinates of the end position
		identity			(tuple)	: The identity of the gamemode (namespace, name, credits)
		view				(tuple)	: The coordinates and orientation to teleport the players
		racing_pos			(tuple)	: Start position (tuple), orientation (int), and count (int) for the start line
	"""
	# Extract namespace, name and credits
	namespace: str = identity[0]
	name: str = identity[1]
	credits: str = identity[2] if len(identity) > 2 else ""

	# DEBUG
	if True:
		yaw: str = view[-2] % 360
		if not (-180 < view[-2] < 360):
			stp.warning(f"Map '{namespace}': Yaw is {view[-2]} instead of {yaw:.2f}.")

	## Calculate the divider depending on the start and end positions
	divider = calculate_divider(start_pos, end_pos)

	## Create the base_condition variable (for the conditions)
	base_condition = f"execute if score #rg_{namespace} switch.data matches"

	## Create the ".mcfunction" file and the "teleport_players.mcfunction" file
	tp_coords, x, y, z = create_tp_coords_string_from_start_and_end(start_pos, end_pos, paste_start_height)
	if view is not None:
		tp_coords = create_tp_coords_string_from_xyz(view[:3])
	create_main_file(namespace, tp_coords, racing_pos)
	create_teleport_players_file(namespace, tp_coords, racing_pos)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = create_splitted_coordinates(start_pos, end_pos, divider)

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = paste_start_height					# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends

	# Write the first lines
	write_first_lines_of_regenerate(namespace, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	# Create the file
	PATH: str = f"switch:maps/survival/{namespace}/regeneration_on_marker"
	write_function(PATH, f"\nexecute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{namespace}_y switch.data")

	# Write the clone and particle commands
	i = 0
	particle_count = 250
	dy = paste_start_height - start_pos[1]
	for k in splitted_coordinates:
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		write_function(PATH, f"""
execute if score #rg_{namespace}_mod switch.data matches {i} at @s in switch:game run particle cloud {k[0] + dx} ~{dy + 0.5} {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force
execute if score #rg_{namespace}_mod switch.data matches {i} at @s run clone from minecraft:overworld {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} to switch:game {k[0]} ~{dy} {k[1]} replace force
""")
		i += 1

	# Write kill item entities command & the scoreboard commands
	write_function(PATH, f"""
scoreboard players add #rg_{namespace}_mod switch.data 1
execute if score #rg_{namespace}_mod switch.data matches {len(splitted_coordinates)} in switch:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
execute if score #rg_{namespace}_mod switch.data matches {len(splitted_coordinates)} run scoreboard players add #rg_{namespace}_y switch.data 1
execute if score #rg_{namespace}_mod switch.data matches {len(splitted_coordinates)} run scoreboard players set #rg_{namespace}_mod switch.data 0

kill @s
""")

	# Write the last lines
	i = (maxY - minY + 1) * len(splitted_coordinates)
	write_last_lines_of_regenerate(namespace, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/clone]")

	# Write the spread_players file
	create_spread_players_file(namespace, start_pos, end_pos, paste_start_height)

	# Write the scan_doors file
	scan_every_door_in_map(namespace, start_pos, end_pos, paste_start_height, splitted_coordinates)

	# Add the map to the list of the generated maps and return
	generated_maps.append(namespace)
	survival_maps.append(namespace)


# Create the function that generates a folder for a gamemode with regeneration using the fill command
def fill_survival(
	start_pos: tuple,
	end_pos: tuple,
	identity: tuple[str, ...],
	block_that_replace: str,
	block_tag_to_replace: str,
	view: tuple[float, float, float, float]
) -> None:
	""" Generate a folder for a gamemode with regeneration using the fill command

	Args:
		identity				(tuple)	: The identity of the gamemode (namespace, name, credits)
		start_pos				(tuple)	: The start position of the regeneration area
		end_pos					(tuple)	: The end position of the regeneration area
		block_that_replace		(str)	: The block that replace the blocks with the tag
		block_tag_to_replace	(str)	: The block tag to replace
		view					(tuple)	: The coordinates and orientation to teleport the players
	"""
	# Extract namespace, name and credits
	namespace: str = identity[0]
	name: str = identity[1]
	credits: str = identity[2] if len(identity) > 2 else ""

	## Calculate the divider depending on the start and end positions
	divider = calculate_divider(start_pos, end_pos)

	## Create the base_condition variable
	base_condition = f"execute if score #rg_{namespace} switch.data matches"

	## Create the ".mcfunction" file and the "teleport_players.mcfunction" file
	tp_coords, x, y, z = create_tp_coords_string_from_start_and_end(start_pos, end_pos)
	if view is not None:
		tp_coords = create_tp_coords_string_from_xyz(view[:3])
	create_main_file(namespace)
	create_teleport_players_file(namespace, tp_coords)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = create_splitted_coordinates(start_pos, end_pos, divider)

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = y									# The y coordinate where the regeneration starts

	# Write the first lines
	write_first_lines_of_regenerate(namespace, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	PATH: str = f"switch:maps/survival/{namespace}/regeneration_on_marker"
	write_function(PATH, f"\nexecute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{namespace}_y switch.data\n")

	# Write the clone and particle commands
	particle_count = int(250 / len(splitted_coordinates)) + 1
	for k in splitted_coordinates:
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		write_function(PATH, f"""
execute at @s in switch:game run particle cloud {k[0] + dx} ~1 {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force
execute at @s in switch:game run fill {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} {block_that_replace} replace {block_tag_to_replace}
""")

	# Write kill item entities command & the scoreboard commands
	write_function(PATH, f"""
execute in switch:game run kill @e[type=item,x={x},y={y},z={z},distance=..1000]
scoreboard players add #rg_{namespace}_y switch.data 1

kill @s
""")

	# Write the last lines
	i = (end_pos[1] - minY) + 1
	write_last_lines_of_regenerate(namespace, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/fill]")

	# Write the spread_players file
	create_spread_players_file(namespace, start_pos, end_pos, paste_start_height = y)

	# Add the map to the list of the generated maps and return
	generated_maps.append(namespace)


def generate_door_files() -> None:
	""" Generate the files that add the doors to the storage
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/add_door_to_storage"
	write_function(PATH, """
data modify storage switch:temp compound set value {x:0,y:0,z:0,door:""}
execute store result storage switch:temp compound.x int 1 run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
$scoreboard players add #y switch.data $(additional_height)
execute store result storage switch:temp compound.y int 1 run scoreboard players get #y switch.data
execute store result storage switch:temp compound.z int 1 run data get entity @s Pos[2]
scoreboard players set #success switch.data 0
""")

	for type in SharedMemory.DOORS["__types__"]:
		for facing in SharedMemory.DOORS["facing"]:
			for half in SharedMemory.DOORS["half"]:
				for hinge in SharedMemory.DOORS["hinge"]:
					for is_open in SharedMemory.DOORS["open"]:
						for powered in SharedMemory.DOORS["powered"]:
							write_function(PATH, f'execute if score #success switch.data matches 0 store success score #success switch.data if block ~ ~ ~ {type}[facing={facing},half={half},hinge={hinge},open={is_open},powered={powered}] run data modify storage switch:temp compound.door set value "{type}[facing={facing},half={half},hinge={hinge},open={is_open},powered={powered}]"\n')
	write_function(PATH, "$data modify storage switch:doors $(name) append from storage switch:temp compound")

	## Generate a file that launch the scan on every map progressively
	PATH: str = "switch:maps/scan_doors_of_every_maps"
	write_function(PATH, "data modify storage switch:maps to_scan set value {}")
	for name in survival_maps:
		write_function(PATH, f"data modify storage switch:maps to_scan.{name} set value 1b")
	write_function(PATH, "schedule function switch:maps/loop_scan_doors_of_every_maps 1t")

	## Generate the loop_scan_doors_of_every_maps file
	PATH: str = "switch:maps/loop_scan_doors_of_every_maps"
	write_function(PATH, f"""
execute if data storage switch:maps to_scan{{{survival_maps[-1]}:1b}} run schedule function switch:maps/loop_scan_doors_of_every_maps 1t
execute if data storage switch:maps to_scan{{{survival_maps[0]}:1b}} run function switch:maps/survival/{survival_maps[0]}/scan_doors
""")
	for i in range(1, len(survival_maps)):
		previous_map = survival_maps[i - 1]
		current_map = survival_maps[i]
		write_function(PATH, f"execute unless data storage switch:maps to_scan.{previous_map} if data storage switch:maps to_scan{{{current_map}:1b}} run function switch:maps/survival/{current_map}/scan_doors")


def generate_regenerate_every_maps_files() -> None:
	""" Generate a file that launch the regeneration on every map progressively
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/regenerate_every_maps"
	write_function(PATH, "data modify storage switch:maps to_regenerate set value {}")
	for name in survival_maps:
		write_function(PATH, f"data modify storage switch:maps to_regenerate.{name} set value 1b")
	write_function(PATH, "schedule function switch:maps/loop_regenerate_every_maps 1t")

	## Generate the loop_regenerate_every_maps file
	PATH: str = "switch:maps/loop_regenerate_every_maps"
	write_function(PATH, f"""
execute if data storage switch:maps to_regenerate{{{survival_maps[-1]}:1b}} run schedule function switch:maps/loop_regenerate_every_maps 1t
execute if data storage switch:maps to_regenerate{{{survival_maps[0]}:1b}} run function switch:maps/survival/{survival_maps[0]}/regenerate
""")
	for i in range(1, len(survival_maps)):
		previous_map = survival_maps[i - 1]
		current_map = survival_maps[i]
		write_function(PATH, f"execute unless data storage switch:maps to_regenerate.{previous_map} if data storage switch:maps to_regenerate{{{current_map}:1b}} run function switch:maps/survival/{current_map}/regenerate")


def generate_load_file() -> None:
	""" Generate the load file for the survival maps
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/load_survival"
	for name in generated_maps:
		write_function(PATH, f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/main')


def generate_regenerate_map_file() -> None:
	""" Generate the regenerate_map file for the survival maps
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/regenerate_map"
	write_function(PATH, "# Regenerate the survival maps")
	for name in generated_maps:
		write_function(PATH, f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/regenerate')

	# Write the last lines
	write_function(PATH, "\n# Remove the map from the storage\ndata remove storage switch:main map")
	write_function(PATH, "\n# Change score of already regenerated map\nscoreboard players set #already_regenerated switch.data 1")


def generate_resume_regeneration_file() -> None:
	""" Generate a resume_regeneration file for the survival maps
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/resume_regeneration"
	write_function(PATH, "# Resume the regeneration of the survival maps")
	for name in generated_maps:
		write_function(PATH, f"execute if score #rg_{name} switch.data matches 1.. run function switch:maps/survival/{name}/regenerate")


def generate_spread_one_player_file() -> None:
	""" Generate the spread_one_player file for the survival maps
	Args:
		config (dict): The configuration of the project
	"""
	PATH: str = "switch:maps/spread_one_player"
	write_function(PATH, "# Spread one player on the survival maps")
	for name in generated_maps:
		write_function(PATH, f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/spread_one_player')


@stp.measure_time(stp.progress, "Generated the map usage file")
def generate_map_usage_file() -> None:
	""" Generate the map_usage file for the survival maps, it shows for each map which modes use it
	Args:
		config (dict): The configuration of the project
	"""
	from src._important.modes import MODES
	PATH: str = f"{Mem.ctx.directory}/map_usage.json"
	CHOOSE_MAP_FOR: str = "function switch:utils/choose_map_for"

	# Get for each modes the maps they use
	modes_usage: dict[str, list[str]] = {}
	for mode in MODES:
		mode_id: str = mode["id"]
		start_file: str = f"switch:modes/{mode_id}/"
		modes_usage[mode_id] = []

		# Get the start function of the mode and search for "function switch:utils/choose_map_for {id:"block_party", maps:["pitch_creep_1","octogone_nether_ice"]}"
		function_content: str = Mem.ctx.data.functions.get(start_file + "start_common", Function()).text.strip()
		if not function_content:
			function_content = Mem.ctx.data.functions.get(start_file + "choose_map_for", Function()).text.strip()
			if not function_content:
				function_content = Mem.ctx.data.functions[start_file + "start"].text.strip()

		splitted: list[str] = function_content.split(CHOOSE_MAP_FOR)
		if len(splitted) > 1:
			maps_str: str = splitted[1].split("\n")[0].split("maps:")[1].split("}")[0]
			modes_usage[mode_id] = json.loads(maps_str)

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
	with stp.super_open(PATH, "w") as f:
		f.write(stp.super_json_dump([maps_usage, modes_usage], max_level=2))

