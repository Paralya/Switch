
# generate_survival_folder.py

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()



# Create the function that generates a folder for a gamemode with regeneration using /clone
def generate_clone_survival_folder(name: str, start_pos: tuple, end_pos: tuple, paste_start_height: int, divider: int = 1):
	""" Generates a folder for a gamemode using /clone for regeneration
	Args:
		name				(str)	: The name of the gamemode
		start_pos			(tuple)	: The coordinates of the start position (y should be 0)
		end_pos				(tuple)	: The coordinates of the end position (y should be < 100)
		paste_start_height	(int)	: The y coordinate where the regeneration starts
		divider				(int)	: How the coordinates are splitted (default: 1)

	Returns:
		None
	"""
	## Check the arguments
	# Check start_pos
	if len(start_pos) != 3:
		raise ValueError("start_pos should be a tuple with 3 elements")

	# Check end_pos
	if len(end_pos) != 3:
		raise ValueError("end_pos should be a tuple with 3 elements")

	# Check if the end_pos are valid
	if end_pos[1] >= 100:
		raise ValueError("end_pos should have y < 100")

	## Create the folder in the survival folder if it doesn't exist
	if not os.path.exists(f"survival/{name}"):
		os.mkdir(f"survival/{name}")

	## Create tp_coords variable
	x = int((start_pos[0] + end_pos[0]) / 2)
	y = int(((start_pos[1] + end_pos[1]) / 2) + paste_start_height)
	z = int((start_pos[2] + end_pos[2]) / 2)
	tp_coords = f"[{x}.0d, {y}.0d, {z}.0d]"

	## Create the ".mcfunction" file
	f = open(f"survival/{name}/.mcfunction", "w")
	f.write("\n")
	f.write('summon marker 0 0 0 {Tags:["switch.selected_map"]}\n')
	f.write(f'execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/{name}/teleport_players\n')
	f.write("\n")
	f.close()

	## Create the "teleport_players.mcfunction" file
	f = open(f"survival/{name}/teleport_players.mcfunction", "w")
	f.write("\n")
	f.write(f'data modify entity @s Pos set value {tp_coords}\n')
	f.write(f'execute at @s run tp @a ~ ~ ~\n')
	f.write("\n")
	f.close()

	## Create the "regenerate.mcfunction" file
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

	# Write the first lines
	f = open(f"survival/{name}/regenerate.mcfunction", "w")
	f.write("\n")
	f.write(f"scoreboard players add #regeneration_ticks switch.data 1\n")
	for x1, x2, z1, z2 in c:
		f.write(f"execute if score #regeneration_ticks switch.data matches 1 run forceload add {x1} {x2} {z1} {z2}\n")
	f.write("\n")

	# More variables
	y = start_pos[1]			# The first y coordinate
	minY = paste_start_height	# The y coordinate where the regeneration starts
	maxY = minY + end_pos[1]	# The y coordinate where the regeneration ends
	i = 20						# The first regeneration tick
	j = y						# The first y coordinate of the clone command (iterator)

	# Create the clone commands
	while minY <= maxY:

		# Reset the split coordinates iterator & Create the clone commands
		z = 0
		for k in c:

			# Write the clone command
			f.write(f"execute if score #regeneration_ticks switch.data matches {i} run clone {k[0]} {j} {k[1]} {k[2]} {j} {k[3]} {k[0]} {minY} {k[1]} replace force\n")
			z += 1

		# Increment the regeneration tick (x2 for every two ticks)
		i += 2

		# Increment the y coordinate of the clones commands
		minY += 1
		j += 1

	# Fix the i variable
	i += len(c) - 1

	# Write the last lines
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run kill @e[type=item]\n")
	for x1, x2, z1, z2 in c:
		f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run forceload remove {x1} {x2} {z1} {z2}\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run scoreboard players reset #regeneration_ticks switch.data\n")
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
	f.write("\n")
	f.close()

	# Return
	return None

# Create the function that generates a folder for a gamemode with regeneration using the fill command
def generate_fill_survival_folder(name: str, start_pos: tuple, end_pos: tuple, block_that_replace: str, block_tag_to_replace: str, divider: int = 1):
	""" Generate a folder for a gamemode with regeneration using the fill command
	Args:
		name					(str)	: The name of the gamemode
		start_pos				(tuple)	: The start position of the regeneration area
		end_pos					(tuple)	: The end position of the regeneration area
		block_that_replace		(str)	: The block that replace the blocks with the tag
		block_tag_to_replace	(str)	: The block tag to replace
		divider					(int)	: How the coordinates are splitted (default: 1)

	Returns:
		None
	"""
	## Check the arguments
	# Check start_pos
	if len(start_pos) != 3:
		raise ValueError("start_pos should be a tuple with 3 elements")

	# Check end_pos
	if len(end_pos) != 3:
		raise ValueError("end_pos should be a tuple with 3 elements")

	## Create the folder in the survival folder if it doesn't exist
	if not os.path.exists(f"survival/{name}"):
		os.mkdir(f"survival/{name}")

	## Create tp_coords variable
	x = int((start_pos[0] + end_pos[0]) / 2)
	y = int((start_pos[1] + end_pos[1]) / 2)
	z = int((start_pos[2] + end_pos[2]) / 2)
	tp_coords = f"[{x}.0d, {y}.0d, {z}.0d]"

	## Create the ".mcfunction" file
	f = open(f"survival/{name}/.mcfunction", "w")
	f.write("\n")
	f.write('summon marker 0 0 0 {Tags:["switch.selected_map"]}\n')
	f.write(f'execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/{name}/teleport_players\n')
	f.write("\n")
	f.close()

	## Create the "teleport_players.mcfunction" file
	f = open(f"survival/{name}/teleport_players.mcfunction", "w")
	f.write("\n")
	f.write(f'data modify entity @s Pos set value {tp_coords}\n')
	f.write(f'execute at @s run tp @a ~ ~ ~\n')
	f.write("\n")
	f.close()

	## Create the "regenerate.mcfunction" file
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

	# Write the first lines
	f = open(f"survival/{name}/regenerate.mcfunction", "w")
	f.write("\n")
	f.write(f"scoreboard players add #regeneration_ticks switch.data 1\n")
	for x1, x2, z1, z2 in c:
		f.write(f"execute if score #regeneration_ticks switch.data matches 1 run forceload add {x1} {x2} {z1} {z2}\n")
	f.write("\n")

	# More variables
	y = start_pos[1]			# The first y coordinate
	minY = y					# The y coordinate where the regeneration starts
	maxY = minY + end_pos[1]	# The y coordinate where the regeneration ends
	i = 20						# The first regeneration tick

	# Create the clone commands
	while minY <= maxY:

		# Create the clone commands
		for k in c:

			# Write the fill command
			f.write(f"execute if score #regeneration_ticks switch.data matches {i} run fill {k[0]} {minY} {k[1]} {k[2]} {minY} {k[3]} {block_that_replace} replace {block_tag_to_replace}\n")

		# Increment the regeneration tick (x1 because /fill is faster than /clone)
		i += 1

		# Increment the y coordinate of the fill command
		minY += 1

	# Write the last lines
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run kill @e[type=item]\n")
	for x1, x2, z1, z2 in c:
		f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run forceload remove {x1} {x2} {z1} {z2}\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i}.. run scoreboard players reset #regeneration_ticks switch.data\n")
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
	f.write("\n")
	f.close()

	# Return
	return None






# Execute the function
generate_clone_survival_folder("dark_forest_hills_test", (39000, 0, 39000), (39143, 69, 39221), 100)
generate_clone_survival_folder("laser_game", (499, 0, 499), (551, 43, 551), 91)
generate_clone_survival_folder("pitchout_1", (950, 0, 1050), (1050, 44, 1150), 95)
#1408 0 1423 1592 99 1578
generate_clone_survival_folder("traitor_original", (1408, 0, 1423), (1592, 99, 1578), 114)
#1947 0 1937 2055 70 2063
generate_clone_survival_folder("zone_51", (1947, 0, 1937), (2055, 70, 2063), 100)
#2459 0 2452 2545 85 2547
generate_clone_survival_folder("spectre_original", (2459, 0, 2452), (2545, 85, 2547), 100)
generate_fill_survival_folder("glass_runner", (2750, -64, 2750), (3250, 384, 3250), "air", "#switch:glassrunner/glass", 10)


