
# generate_survival_folder.py

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Import the required functions
# TODO

# Create the function
def generate_survival_folder(name: str, tp_coords: str, start_pos: tuple, end_pos: tuple):
	""" Generates a folder for a gamemode
	Args:
		name		(str)	: The name of the gamemode
		tp_coords	(str)	: The coordinates of the teleporter "[x, y, z]" where x,y,z are doubles
		start_pos	(tuple)	: The coordinates of the start position (y should be 0)
		end_pos		(tuple)	: The coordinates of the end position (y should be < 100)
	
	Returns:
		None
	"""

	## Create the folder in the survival folder
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
	"""
	# c1 = [39000,39000,39143,39221]
# divider = 2
# d = (c1[2] - c1[0]) / divider

# c = []
# for i in range(divider):
#    c.append([ round(c1[0] + d*i), c1[1], round(c1[0] + d*(i+1)), c1[3] ])

# y = 0
# minY = 100
# maxY = 169
# i = 20
# j = y
# while minY <= maxY:
#    z = 0
#    for k in c:
#        print('execute if score #regeneration_ticks switch.data matches '+str(i+z)+' run clone '+str(k[0])+' '+str(j)+' '+str(k[1])+' '+str(k[2])+' '+str(j)+' '+str(k[3])+' '+str(k[0])+' '+str(minY)+' '+str(k[1])+' replace force')
#        z += 2
#    i += 4
#    j += 1
#    minY += 1
	"""
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
	minY = 100					# The y coordinate where the regeneration starts
	maxY = minY + end_pos[1]	# The y coordinate where the regeneration ends
	i = 20						# The first regeneration tick
	j = y						# The first y coordinate of the clone command (iterator)

	# Create the clone commands
	while minY <= maxY:
		# TODO









