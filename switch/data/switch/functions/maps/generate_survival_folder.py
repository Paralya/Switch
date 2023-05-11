
# generate_survival_folder.py

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Import the required functions
# TODO

# Create the function
def generate_survival_folder(name: str, tp_coords: str, start_pos: tuple, end_pos: tuple, paste_start_height: int):
	""" Generates a folder for a gamemode
	Args:
		name		(str)	: The name of the gamemode
		tp_coords	(str)	: The coordinates of the teleporter "[x, y, z]" where x,y,z are doubles
		start_pos	(tuple)	: The coordinates of the start position (y should be 0)
		end_pos		(tuple)	: The coordinates of the end position (y should be < 100)
	
	Returns:
		None
	"""
	## Check the arguments
	# Check tp_coords
	if tp_coords[0] != "[" or tp_coords[-1] != "]":
		raise ValueError("tp_coords should be a string that looks like this: \"[x, y, z]\" where x,y,z are doubles")
	
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
	# Write the first lines
	f = open(f"survival/{name}/regenerate.mcfunction", "w")
	f.write("\n")
	f.write(f"scoreboard players add #regeneration_ticks switch.data 1\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches 1 run forceload add {start_pos[0]} {start_pos[2]} {end_pos[0]} {end_pos[2]}\n")
	f.write("\n")
	
	# Prepare the start and end coordinates
	c1 = [start_pos[0], start_pos[2], end_pos[0], end_pos[2]]
	divider = 2
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
	
	# More variables
	y = start_pos[1]			# The first y coordinate
	minY = paste_start_height	# The y coordinate where the regeneration starts
	maxY = minY + end_pos[1]	# The y coordinate where the regeneration ends
	i = 20						# The first regeneration tick
	j = y						# The first y coordinate of the clone command (iterator)

	# Create the clone commands
	while minY <= maxY:
		
		# Reset the split coordinates iterator
		z = 0

		# Create the clone commands
		for k in c:

			# Write the clone command
			f.write(f"execute if score #regeneration_ticks switch.data matches {i+z} run clone {k[0]} {j} {k[1]} {k[2]} {j} {k[3]} {k[0]} {minY} {k[1]} replace force\n")

			# Increment the split coordinates iterator
			z += divider
		
		# Increment the regeneration tick (x2 for every two ticks)
		i += divider * 2

		# Increment the y coordinate of the clones commands
		minY += 1
		j += 1
	
	# Write the last lines
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i} run kill @e[type=item]\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i} run forceload remove {start_pos[0]} {start_pos[2]} {end_pos[0]} {end_pos[2]}\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches {i} run scoreboard players reset #regeneration_ticks switch.data\n")
	f.write("\n")
	f.write(f"execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
	f.write("\n")
	f.close()

	# Return
	return None

# Execute the function
generate_survival_folder("dark_forest_hills_test", "[39069.0d, 150.0d, 39111.0d]", (39000, 0, 39000), (39143, 69, 39221), 100)
generate_survival_folder("laser_game", "[520.0d, 103.0d, 520.0d]", (499, 0, 499), (551, 43, 551), 91)
generate_survival_folder("pitchout_1", "[1000.0d, 110.0d, 1000.0d]", (950, 0, 1050), (1050, 44, 1150), 95)
#1408 0 1423 1592 99 1578
generate_survival_folder("traitor_original", "[1500.0d, 150.0d, 1500.0d]", (1408, 0, 1423), (1592, 99, 1578), 114)
#1947 0 1937 2055 70 2063
generate_survival_folder("zone_51", "[2000.0d, 150.0d, 2000.0d]", (1947, 0, 1937), (2055, 70, 2063), 100)
#2459 0 2452 2545 85 2547
generate_survival_folder("spectre_original", "[2500.0d, 150.0d, 2500.0d]", (2459, 0, 2452), (2545, 85, 2547), 100)


