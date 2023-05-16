
# generate_survival_folder.py

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

class colors:
	RED = "\033[31m"
	GREEN = "\033[32m"
	YELLOW = "\033[33m"
	BLUE = "\033[34m"
	RESET = "\033[39m"


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

	## Create the folder in the survival folder if it doesn't exist
	if not os.path.exists(f"survival/{name}"):
		os.mkdir(f"survival/{name}")

	## Create tp_coords variable
	x = int((start_pos[0] + end_pos[0] + 1000) / 2 - 500)
	y = int(((start_pos[1] + end_pos[1] + 1000) / 2 - 500) + paste_start_height)
	z = int((start_pos[2] + end_pos[2] + 1000) / 2 - 500)
	tp_coords = f"[{x}.0d, {y}.0d, {z}.0d]"

	## Create the base variable
	base = f"execute if score #rg_{name} switch.data matches"

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
	f.write(f"scoreboard players add #rg_{name} switch.data 1\n")
	for x1, x2, z1, z2 in c:
		f.write(f"{base} 1 run forceload add {x1} {x2} {z1} {z2}\n")
	f.write("\n")

	# More variables
	y = start_pos[1]						# The first y coordinate
	minY = paste_start_height					# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends
	i = 20										# The first regeneration tick
	j = y										# The first y coordinate of the clone command (iterator)

	# Create the clone commands
	while minY <= maxY:

		# Reset the split coordinates iterator & Create the clone commands
		for k in c:

			# Write the clone command
			f.write(f"{base} {i} run clone {k[0]} {j} {k[1]} {k[2]} {j} {k[3]} {k[0]} {minY} {k[1]} replace force\n")
			i += 1

			# Write item kill command every 50 clone commands
			if i % 50 == 0:
				f.write(f"{base} {i} run kill @e[type=item,x={x},y={y},z={z},distance=..1000]\n")

		# Increment the y coordinate of the clones commands
		minY += 1
		j += 1

	# Print how long it will take to regenerate the map
	secs = i // 20
	mins = ""
	if secs >= 60:
		if (secs % 60) < 10:
			mins = f" ({secs // 60}m0{secs % 60}s)"
		else:
			mins = f" ({secs // 60}m{secs % 60}s)"
	print(f"{colors.YELLOW}'{name}'{colors.GREEN} will take {colors.RED}{i}{colors.GREEN} ticks to regenerate {colors.RED}({secs} seconds{mins}){colors.RESET} [/clone]")

	# Write the last lines
	f.write("\n")
	f.write(f"{base} {i}.. run kill @e[type=item]\n")
	for x1, x2, z1, z2 in c:
		f.write(f"{base} {i}.. run forceload remove {x1} {x2} {z1} {z2}\n")
	f.write(f"{base} {i}.. run tellraw @a[tag=convention.debug] " + '["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map \'' + name + '\' vient de finir de se régénérer en ","color":"yellow"},{"text":"' + str(secs // 60) + '","color":"gold"},{"text":"m","color":"yellow"},{"text":"' + str(secs % 60) + '","color":"gold"},{"text":"s","color":"yellow"}]\n')
	f.write(f"{base} {i}.. run scoreboard players reset #rg_{name} switch.data\n")
	f.write("\n")
	f.write(f"{base} 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
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
	x = int((start_pos[0] + end_pos[0] + 1000) / 2 - 500)
	y = int((start_pos[1] + end_pos[1] + 1000) / 2 - 500)
	z = int((start_pos[2] + end_pos[2] + 1000) / 2 - 500)
	tp_coords = f"[{x}.0d, {y}.0d, {z}.0d]"

	## Create the base variable
	base = f"execute if score #rg_{name} switch.data matches"

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
	f.write(f"scoreboard players add #rg_{name} switch.data 1\n")
	for x1, x2, z1, z2 in c:
		f.write(f"{base} 1 run forceload add {x1} {x2} {z1} {z2}\n")
	f.write("\n")

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = y									# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends
	i = 20										# The first regeneration tick

	# Create the clone commands
	while minY <= maxY:

		# Create the clone commands
		for k in c:

			# Write the fill command
			f.write(f"{base} {i} run fill {k[0]} {minY} {k[1]} {k[2]} {minY} {k[3]} {block_that_replace} replace {block_tag_to_replace}\n")

		# Increment the regeneration tick (x1 because /fill is faster than /clone)
		i += 1

		# Increment the y coordinate of the fill command
		minY += 1

	# Print how long it will take to regenerate the map
	secs = i // 20
	mins = ""
	if secs >= 60:
		if (secs % 60) < 10:
			mins = f" ({secs // 60}m0{secs % 60}s)"
		else:
			mins = f" ({secs // 60}m{secs % 60}s)"
	print(f"{colors.YELLOW}'{name}'{colors.GREEN} will take {colors.RED}{i}{colors.GREEN} ticks to regenerate {colors.RED}({secs} seconds{mins}){colors.RESET} [/fill]")

	# Write the last lines
	f.write("\n")
	f.write(f"{base} {i}.. run kill @e[type=item]\n")
	for x1, x2, z1, z2 in c:
		f.write(f"{base} {i}.. run forceload remove {x1} {x2} {z1} {z2}\n")
	f.write(f"{base} {i}.. run tellraw @a[tag=convention.debug] " + '["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map \'' + name + '\' vient de finir de se régénérer en ","color":"yellow"},{"text":"' + str(secs // 60) + '","color":"gold"},{"text":"m","color":"yellow"},{"text":"' + str(secs % 60) + '","color":"gold"},{"text":"s","color":"yellow"}]\n')
	f.write(f"{base} {i}.. run scoreboard players reset #rg_{name} switch.data\n")
	f.write("\n")
	f.write(f"{base} 1.. run schedule function switch:maps/survival/{name}/regenerate 1t\n")
	f.write("\n")
	f.close()

	# Return
	return None


# Execute the function
generate_clone_survival_folder("laser_game", (499, 0, 499), (551, 43, 551), 91, divider = 2)
generate_clone_survival_folder("pitchout_1", (950, 0, 1050), (1050, 44, 1150), 95, divider = 2)
#1408 0 1423 1592 99 1578
generate_clone_survival_folder("traitor_original", (1408, 0, 1423), (1592, 99, 1578), 114, divider = 4)
#1947 0 1937 2055 70 2063
generate_clone_survival_folder("zone_51", (1947, 0, 1937), (2055, 70, 2063), 100, divider = 4)
#2459 0 2452 2545 85 2547
generate_clone_survival_folder("spectre_original", (2459, 0, 2452), (2545, 85, 2547), 100, divider = 4)
generate_fill_survival_folder("glass_runner", (2750, -64, 2750), (3250, 384, 3250), "air", "#switch:glassrunner/glass", divider = 10)
#3939 0 3939 4061 50 4061
generate_clone_survival_folder("mushroom_plains", (3939, 0, 3939), (4061, 50, 4061), 100, divider = 2)
#5934 0 5933 6063 73 6067
generate_clone_survival_folder("friends_black_ball", (5934, 0, 5933), (6063, 73, 6067), 100, divider = 4)
#6970 0 6970 7030 49 7030
generate_clone_survival_folder("enchanting_island", (6970, 0, 6970), (7030, 49, 7030), 100, divider = 2)
#7977 0 7976 8025 31 8024
generate_clone_survival_folder("friends_oneforall", (7977, 0, 7976), (8025, 31, 8024), 100, divider = 4)
#9940 0 9940 10060 64 10060
generate_clone_survival_folder("warden_forest", (9940, 0, 9940), (10060, 64, 10060), 100, divider = 4)
#10964 0 10968 11029 42 11033
generate_clone_survival_folder("friends_pvpbox_ice", (10964, 0, 10968), (11029, 42, 11033), 100, divider = 4)
#11957 0 11965 12047 67 12055
generate_clone_survival_folder("friends_pvpbox_hills", (11957, 0, 11965), (12047, 67, 12055), 100, divider = 4)
#12955 0 12955 13046 33 13045
generate_clone_survival_folder("friends_pvpbox_end", (12955, 0, 12955), (13046, 33, 13045), 100, divider = 4)
#13901 0 13901 14099 255 14099
generate_fill_survival_folder("rush_the_point_1", (13901, 0, 13901), (14099, 255, 14099), "air", "#switch:rush_the_point/placed", divider = 2)
#16960 0 16960 17040 45 17040
generate_clone_survival_folder("friends_cube_lobby", (16960, 0, 16960), (17040, 45, 17040), 100, divider = 4)
#20862 0 20908 21132 95 21099
generate_clone_survival_folder("baby_park", (20862, 0, 20908), (21132, 95, 21099), 100, divider = 10)
#21888 0 21888 22114 81 22133
generate_clone_survival_folder("bowser_castle", (21888, 0, 21888), (22114, 81, 22133), 100, divider = 4)
#22896 0 22904 23103 86 23109
generate_clone_survival_folder("snow_travel", (22896, 0, 22904), (23103, 86, 23109), 100, divider = 10)
#25961 -64 25944 26099 100 26028
generate_clone_survival_folder("cathedrale_liege", (25961, -64, 25944), (26099, 100, 26028), 100, divider = 4)
#26982 0 26969 27018 61 27031
generate_clone_survival_folder("layers_1", (26982, 0, 26969), (27018, 61, 27031), 100, divider = 2)
#27969 63 27969 28031 82 28031
generate_clone_survival_folder("spleef_1", (27969, 63, 27969), (28031, 82, 28031), 87, divider = 2)
#28987 100 28987 29031 155 29013
generate_fill_survival_folder("de_a_coudre_1", (28987, 100, 28987), (29031, 155, 29013), "water", "#switch:de_a_coudre", divider = 2)
#30987 100 30987 31011 103 31013
generate_fill_survival_folder("mlg_a_coudre_1", (30987, 100, 30987), (31011, 103, 31013), "air", "#switch:de_a_coudre", divider = 2)
#31950 0 31950 32050 44 32050
generate_clone_survival_folder("zonweeb_main", (31950, 0, 31950), (32050, 44, 32050), 100, divider = 4)
#33813 89 33873 34000 0 34000
generate_clone_survival_folder("jayl_dark_forest", (33813, 0, 33873), (34000, 89, 34000), 100, divider = 10)
#35827 -64 35668 36340 99 36180
generate_clone_survival_folder("operation_pigclaw", (35827, -64, 35668), (36340, 99, 36180), 100, divider = 50)
#37986 0 37974 38014 16 38026
generate_clone_survival_folder("pitch_creep_2", (37986, 0, 37974), (38014, 16, 38026), 100, divider = 2)
#39000 0 39000 39143 69 39221
generate_clone_survival_folder("dark_forest_hills", (39000, 0, 39000), (39143, 69, 39221), 100, divider = 10)
#39900 -64 39900 40100 100 40100
generate_clone_survival_folder("paralya_lobby_noel", (39900, -64, 39900), (40100, 100, 40100), 100, divider = 10)
#41000 -63 40892 41267 89 41000
generate_clone_survival_folder("huge_cargo", (41000, -64, 40892), (41267, 89, 41000), 100, divider = 8)
#41935 0 41942 42065 38 42058
generate_clone_survival_folder("ghost_town", (41935, 0, 41942), (42065, 38, 42058), 100, divider = 2)
#45788 -64 45849 46136 126 46187
generate_clone_survival_folder("taroatlas_soviet_prison", (45788, -64, 45849), (46136, 126, 46187), 128, divider = 25)
#46971 0 46971 47036 42 47042
generate_clone_survival_folder("desert_grand_library", (46971, 0, 46971), (47036, 42, 47042), 100, divider = 2)
#47930 0 47930 48070 84 48070
generate_clone_survival_folder("new_grounds", (47930, 0, 47930), (48070, 84, 48070), 100, divider = 4)
#48900 0 48900 49100 47 49100
generate_clone_survival_folder("cookie_wars", (48900, 0, 48900), (49100, 47, 49100), 100, divider = 4)
#49906 0 49918 50145 60 50103
generate_clone_survival_folder("snow_hills", (49906, 0, 49918), (50145, 60, 50103), 100, divider = 8)
#51899 -64 51853 52115 92 52071
generate_clone_survival_folder("vilarles_castillo", (51899, -64, 51853), (52115, 92, 52071), 100, divider = 10)
#52915 0 52876 53040 57 53094
generate_clone_survival_folder("zonweeb_highschool", (52915, 0, 52876), (53040, 57, 53094), 100, divider = 4)




