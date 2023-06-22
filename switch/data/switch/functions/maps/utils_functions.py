
# Stop the script if it's not called by import
if __name__ == "__main__":
	print("This script can't be executed directly, it must be imported.")
	exit()

# Imports
from io import TextIOWrapper
import os

## Create the colors variables
RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
BLUE = "\033[34m"
RESET = "\033[39m"

## Create the functions

def convert_tick_to_strings(tick: int, name: str) -> tuple:
	""" Converts "tick" in entry to formatted strings
	such as "XX seconds (XXmXXs)" or "XX seconds"
	if the tick is less than 60
	and a tellraw command to display the time

	Args:
		tick (int)	: The tick to convert
		name (str)	: The name of the map
	Returns:
		(str, str)	: The formatted strings
	"""
	# Get variables
	secs = tick // 20
	isec = secs % 60
	imin = secs // 60

	# Convert the tick to a string
	secsString = str(isec)
	if isec < 10:
		secsString = f"0{isec}"
	minsString = str(imin)

	# Create the parenthesis string
	parenthesis = ""
	if secs >= 60:
		parenthesis = f" ({minsString}m{secsString}s)"
	
	# Create the tellraw string
	tellraw = f'tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true}},{{"text":" La map \'","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"\' vient de finir de se régénérer en ","color":"yellow"}},{{"text":"{minsString}","color":"gold"}},{{"text":"m","color":"yellow"}},{{"text":"{secsString}","color":"gold"}},{{"text":"s","color":"yellow"}}]\n'

	# Return
	return (f"{secs} seconds{parenthesis}", tellraw)

def createFolderIfNotExists(folder_path: str):
	""" Creates a folder if it doesn't exist
	Args:
		folder_path (str)	: The path of the folder
	Returns:
		None
	"""
	if not os.path.exists(folder_path):
		os.mkdir(folder_path)
	return None

def calculateDivider(start_pos: tuple, end_pos: tuple) -> int:
	""" Calculates the divider of the regeneration area depending on the area
	The more the area is big, the more the divider is big
	The divider is calculated so that the area is divided into 3200 blocks

	Args:
		start_pos (tuple)	: The start position of the regeneration area
		end_pos (tuple)		: The end position of the regeneration area
	Returns:
		(int)				: The divider
	"""
	area = (end_pos[0] - start_pos[0]) * (end_pos[2] - start_pos[2])
	return (area // 3200 + 2)


def createTpCoordsStringFromStartAndEnd(start_pos: tuple, end_pos: tuple, paste_start_height: int = 0) -> tuple:
	""" Creates a string with the tp coordinates
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

def createTpCoordsStringFromXYZ(xyz: tuple) -> tuple:
	""" Creates a string with the tp coordinates
	Args:
		x (int)		: The x coordinate
		y (int)		: The y coordinate
		z (int)		: The z coordinate
	Returns:
		(str)		: The tp coordinates string
	"""
	x, y, z = xyz
	return f"[{x}.5d, {y}.5d, {z}.5d]"

def createMainFile(name: str, kart_racer: list = []) -> None:
	""" Creates the ".mcfunction" file
	Args:
		name (str)	: The name of the map
		kart_racer	(list)	: Start position (tuple), orientation (int), and count (int) for the kart racer start line (optional)

	Returns:
		(str)		: The content of the file
	"""
	# Create the file
	f = open(f"survival/{name}/.mcfunction", "w")
	f.write("\n")

	# Write the first line
	f.write('summon marker 0 0 0 {Tags:["switch.selected_map"]}\n')

	# If there is no kart racer
	if len(kart_racer) < 2:
		f.write(f"execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/{name}/teleport_players\n")
	else:
		f.write(f"execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value {kart_racer[-1]}\n\n")
		f.write(f"scoreboard players set #count switch.data 0\n")
		f.write(f"execute as @a[sort=random] run function switch:maps/survival/{name}/teleport_players\n\n")
		f.write(f"execute if data storage switch:main {{current_game:\"kart_racer\"}} run function switch:maps/survival/{name}/if_kart_racer\n")

		# Warning if the if_kart_racer file doesn't exist
		if not os.path.exists(f"survival/{name}/if_kart_racer.mcfunction"):
			print(f"{RED}Warning: {YELLOW}'{name}'{RED} doesn't have a {YELLOW}'if_kart_racer.mcfunction'{RED} file{RESET}")

	# Close the file and return
	f.write("\n")
	f.close()
	return None

def createTeleportPlayersFile(name: str, tp_coords: str, kart_racer: list = []) -> None:
	""" Creates the "teleport_players.mcfunction" file
	Args:
		name 		(str)	: The name of the map
		tp_coords 	(str)	: The tp coordinates string
		kart_racer	(list)	: Start position (tuple), orientation (int), and count (int) for the kart racer start line (optional)

	Returns:
		(str)			: The content of the file
	"""
	# Create the file
	f = open(f"survival/{name}/teleport_players.mcfunction", "w")
	f.write("\n")

	# If there is no kart racer
	if len(kart_racer) == 0:
		f.write(f'data modify entity @s Pos set value {tp_coords}\n')
		f.write(f'execute at @s run tp @a ~ ~ ~\n')
		f.write(f'execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/{name}/spread_players\n')
		f.write(f'scoreboard players reset #do_spreadplayers switch.data\n')
	else:

		# Get variables
		x, y, z = kart_racer[0]
		orientation = kart_racer[1]
		count = kart_racer[2]

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
			f.write(f'execute if score #count switch.data matches {i} in overworld positioned {x} {y} {z} run tp @s {coords} {orientation} 0\n')

		# Write the last lines
		f.write("\n")
		f.write("scoreboard players add #count switch.data 1\n")
		f.write(f"scoreboard players operation #count switch.data %= #{count} switch.data\n")

	# Close the file and return
	f.write("\n")
	f.close()
	return None

def createSplittedCoordinates(start_pos: tuple, end_pos: tuple, divider: int) -> list:
	""" Creates a list with the splitted coordinates of
	the regeneration area depending on the divider argument

	Args:
		start_pos (tuple)	: The start position of the regeneration area
		end_pos (tuple)		: The end position of the regeneration area
		divider (int)		: How the coordinates are splitted (default: 1)
	Returns:
		(list)				: The splitted coordinates
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

		# Append the coordinates to the list and
		dx = x2 - x1
		dz = z2 - z1
		c.append([ x1, x2, z1, z2 ])

	# Return
	return c


def writeFirstLinesOfRegenerate(name: str, base_condition: str, splitted_coordinates: list) -> TextIOWrapper:
	""" Writes the "regenerate.mcfunction" file
	Args:
		name (str)					: The name of the map
		base_condition (str)		: The base_condition condition of the command
		splitted_coordinates (list)	: The splitted coordinates
	Returns:
		(TextIOWrapper)				: The file
	"""
	# Create the file
	f = open(f"survival/{name}/regenerate.mcfunction", "w")

	# Write the first lines
	f.write("\n")
	f.write(f"scoreboard players add #rg_{name} switch.data 1\n")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		f.write(f"{base_condition} 1 run forceload add {x1} {x2} {z1} {z2}\n")

	# Add a blank line and return the TextIOWrapper
	f.write("\n")
	return f

def writeLastLinesOfRegenerate(f: TextIOWrapper, name: str, base_condition: str, splitted_coordinates: list, xyz: tuple, last_tick: int, divider: int, suffix: str = "") -> None:
	""" Writes the last lines of the "regenerate.mcfunction" file
	Args:
		f (TextIOWrapper)			: The file
		name (str)					: The name of the map
		base_condition (str)		: The base_condition condition of the command
		splitted_coordinates (list)	: The splitted coordinates
		last_tick (int)				: The last tick
		divider (int)				: The divider of the regeneration area
		suffix (str)				: The suffix of the print function (like "[/clone]" or "[/fill]")
	Returns:
		None
	"""
	# Get the time string and the tellraw command
	timeStr, tellraw = convert_tick_to_strings(last_tick, name)

	# Print the time
	print(f"{YELLOW}'{name}'{GREEN} will take {RED}{last_tick}{GREEN} ticks to regenerate {RED}[{timeStr}]{GREEN} with a divider of {YELLOW}{divider}{RESET} {suffix}")

	## Write the last lines
	# Write the scoreboard and summon commands
	f.write(f"{base_condition} 1 run scoreboard players set #rg_{name}_y switch.data -64\n")
	f.write(f"{base_condition} 1 run scoreboard players set #rg_{name}_mod switch.data 0\n")
	f.write(f"{base_condition} ..{last_tick - 1} summon marker run function switch:maps/survival/{name}/regeneration_on_marker\n")
	f.write("\n")

	# Write the kill command
	x, y, z = xyz
	f.write(f"{base_condition} {last_tick}.. run kill @e[type=item,x={x},y={y},z={z},distance=..1000]\n")

	# Write the forceload commands
	for x1, x2, z1, z2 in splitted_coordinates:
		f.write(f"{base_condition} {last_tick}.. run forceload remove {x1} {x2} {z1} {z2}\n")
	
	# Write the tellraw command
	f.write(f"{base_condition} {last_tick}.. run {tellraw}")

	# Write the reset command
	f.write(f"{base_condition} {last_tick}.. run scoreboard players reset #rg_{name} switch.data\n")

	# Write the schedule command
	f.write("\n")
	f.write(f"{base_condition} 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
	f.write("\n")

	# Close the file
	f.close()

def createSpreadPlayersFile(name: str, start_pos: tuple, end_pos: tuple, paste_start_height: int) -> None:
	""" Creates the "spread_players.mcfunction" and "spread_one_player.mcfunction" files
	Args:
		name (str)					: The name of the map
		start_pos (tuple)			: The start position of the regeneration area
		end_pos (tuple)				: The end position of the regeneration area
		paste_start_height (int)	: The height where the map is pasted

	Returns:
		None
	"""
	## Get variables
	_, x, _, z = createTpCoordsStringFromStartAndEnd(start_pos, end_pos, paste_start_height)
	dx = end_pos[0] - x
	dz = end_pos[2] - z
	maxRange = min(dx, dz) // 2
	spread_distance = maxRange // 10
	max_height = end_pos[1] + paste_start_height - 1
	y = start_pos[1]
	dy = paste_start_height - 1 - y

	## Spread players file
	# Create the file
	f = open(f"survival/{name}/spread_players.mcfunction", "w")

	# Write the header
	f.write("\n")
	f.write("## This file is auto-generated by the script 'generate_survival_folder.py'\n")
	f.write("## Don't edit it manually but the script instead\n")
	f.write("\n")

	# Write the spreadplayers command
	f.write(f"spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @a\n")

	# Write the assurance commands
	f.write("\n")
	f.write("## Assurance commands\n")
	for _ in range(12):
		f.write(f"execute as @a at @s if entity @s[y={y},dy={dy}] run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s\n")
		f.write(f"execute as @a at @s if block ~ ~-1 ~ barrier run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s\n")

	# Close the file
	f.write("\n")
	f.close()

	## Spread one player file
	# Create the file
	f = open(f"survival/{name}/spread_one_player.mcfunction", "w")

	# Write the header
	f.write("\n")
	f.write("## This file is auto-generated by the script 'generate_survival_folder.py'\n")
	f.write("## Don't edit it manually but the script instead\n")
	f.write("\n")

	# Write the spreadplayers command
	f.write(f"spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s\n")

	# Write the assurance commands
	f.write("\n")
	f.write("## Assurance commands\n")
	for _ in range(12):
		f.write(f"execute at @s if entity @s[y={y},dy={dy}] run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s\n")
		f.write(f"execute at @s if block ~ ~-1 ~ barrier run spreadplayers {x} {z} {spread_distance} {maxRange} under {max_height} false @s\n")

	# Close the file and return
	f.write("\n")
	f.close()
	return None


