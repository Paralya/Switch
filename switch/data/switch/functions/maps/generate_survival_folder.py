
# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Imports
import time
from utils_functions import *

# Get start time to calculate the execution time
start_time = time.time()

# List of the maps that have been generated
generated_maps = []

# Create the function that generates a folder for a gamemode with regeneration using /clone
def generate_clone_survival_folder(name: str, start_pos: tuple, end_pos: tuple, paste_start_height: int):
	""" Generates a folder for a gamemode using /clone for regeneration
	Args:
		name				(str)	: The name of the gamemode
		start_pos			(tuple)	: The coordinates of the start position (y should be 0)
		end_pos				(tuple)	: The coordinates of the end position (y should be < 100)
		paste_start_height	(int)	: The y coordinate where the regeneration starts

	Returns:
		None
	"""
	## Create the folder in the survival folder if it doesn't exist
	createFolderIfNotExists(f"survival/{name}")

	## Calculate the divider depending on the start and end positions
	divider = calculateDivider(start_pos, end_pos)

	## Create the base_condition variable (for the conditions)
	base_condition = f"execute if score #rg_{name} switch.data matches"

	## Create the ".mcfunction" file and the "teleport_players.mcfunction" file
	createMainFile(name)
	tp_coords, x, y, z = createTpCoordsString(start_pos, end_pos, paste_start_height)
	createTeleportPlayersFile(name, tp_coords)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = createSplittedCoordinates(start_pos, end_pos, divider)

	# Write the first lines
	f = writeFirstLinesOfRegenerate(name, base_condition, splitted_coordinates)

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = paste_start_height					# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends
	i = 20										# The first regeneration tick
	j = y										# The first y coordinate of the clone command (iterator)

	# Create the clone commands
	while minY <= maxY:

		# Reset the split coordinates iterator & Create the clone commands
		for k in splitted_coordinates:

			# Write the clone command
			f.write(f"{base_condition} {i} run clone {k[0]} {j} {k[1]} {k[2]} {j} {k[3]} {k[0]} {minY} {k[1]} replace force\n")
			i += 1

			# Write item kill command every 50 clone commands
			if i % 50 == 0:
				f.write(f"{base_condition} {i} run kill @e[type=item,x={x},y={y},z={z},distance=..1000]\n")

		# Increment the y coordinate of the clones commands
		minY += 1
		j += 1

	# Write the last lines
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, i, divider, "[/clone]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	return None

# Create the function that generates a folder for a gamemode with regeneration using the fill command
def generate_fill_survival_folder(name: str, start_pos: tuple, end_pos: tuple, block_that_replace: str, block_tag_to_replace: str):
	""" Generate a folder for a gamemode with regeneration using the fill command
	Args:
		name					(str)	: The name of the gamemode
		start_pos				(tuple)	: The start position of the regeneration area
		end_pos					(tuple)	: The end position of the regeneration area
		block_that_replace		(str)	: The block that replace the blocks with the tag
		block_tag_to_replace	(str)	: The block tag to replace

	Returns:
		None
	"""
	## Create the folder in the survival folder if it doesn't exist
	createFolderIfNotExists(f"survival/{name}")

	## Calculate the divider depending on the start and end positions
	divider = calculateDivider(start_pos, end_pos)

	## Create the base_condition variable
	base_condition = f"execute if score #rg_{name} switch.data matches"

	## Create the ".mcfunction" file and the "teleport_players.mcfunction" file
	createMainFile(name)
	tp_coords, _, y, _ = createTpCoordsString(start_pos, end_pos)
	createTeleportPlayersFile(name, tp_coords)

	## Create the "regenerate.mcfunction" file
	# Create the splitted coordinates
	splitted_coordinates = createSplittedCoordinates(start_pos, end_pos, divider)

	# Write the first lines
	f = writeFirstLinesOfRegenerate(name, base_condition, splitted_coordinates)

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = y									# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends
	i = 20										# The first regeneration tick

	# Create the clone commands
	while minY <= maxY:

		# Create the clone commands
		for k in splitted_coordinates:

			# Write the fill command
			f.write(f"{base_condition} {i} run fill {k[0]} {minY} {k[1]} {k[2]} {minY} {k[3]} {block_that_replace} replace {block_tag_to_replace}\n")

		# Increment the regeneration tick (x1 because /fill is faster than /clone)
		i += 1

		# Increment the y coordinate of the fill command
		minY += 1

	# Write the last lines
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, i, divider, "[/fill]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height = y)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	return None

# TODO : Override the 'teleport_players' function
# TODO : 'if_kart_racer' function

## Execute the functions
# Generate the folders for the survival maps
generate_clone_survival_folder("laser_game", (499, 0, 499), (551, 43, 551), 91)
generate_clone_survival_folder("pitchout_1", (950, 0, 1050), (1050, 44, 1150), 95)
#1408 0 1423 1592 99 1578
generate_clone_survival_folder("traitor_original", (1408, 0, 1423), (1592, 99, 1578), 114)
#1947 0 1937 2055 70 2063
generate_clone_survival_folder("zone_51", (1947, 0, 1937), (2055, 70, 2063), 100)
#2459 0 2452 2545 85 2547
generate_clone_survival_folder("spectre_original", (2459, 0, 2452), (2545, 85, 2547), 100)
generate_fill_survival_folder("glass_runner", (2750, -64, 2750), (3250, 384, 3250), "air", "#switch:glassrunner/glass")
#3939 0 3939 4061 50 4061
generate_clone_survival_folder("mushroom_plains", (3939, 0, 3939), (4061, 50, 4061), 100)
#5934 0 5933 6063 73 6067
generate_clone_survival_folder("friends_black_ball", (5934, 0, 5933), (6063, 73, 6067), 100)
#6970 0 6970 7030 49 7030
generate_clone_survival_folder("enchanting_island", (6970, 0, 6970), (7030, 49, 7030), 100)
#7977 0 7976 8025 31 8024
generate_clone_survival_folder("friends_oneforall", (7977, 0, 7976), (8025, 31, 8024), 100)
#9940 0 9940 10060 64 10060
generate_clone_survival_folder("warden_forest", (9940, 0, 9940), (10060, 64, 10060), 100)
#10964 0 10968 11029 42 11033
generate_clone_survival_folder("friends_pvpbox_ice", (10964, 0, 10968), (11029, 42, 11033), 100)
#11957 0 11965 12047 67 12055
generate_clone_survival_folder("friends_pvpbox_hills", (11957, 0, 11965), (12047, 67, 12055), 100)
#12955 0 12955 13046 33 13045
generate_clone_survival_folder("friends_pvpbox_end", (12955, 0, 12955), (13046, 33, 13045), 100)
#13901 0 13901 14099 255 14099
generate_fill_survival_folder("rush_the_point_1", (13901, 0, 13901), (14099, 255, 14099), "air", "#switch:rush_the_point/placed")
#16960 0 16960 17040 45 17040
generate_clone_survival_folder("friends_cube_lobby", (16960, 0, 16960), (17040, 45, 17040), 100)
#20862 0 20908 21132 95 21099
generate_clone_survival_folder("baby_park", (20862, 0, 20908), (21132, 95, 21099), 100)
#21888 0 21888 22114 81 22133
generate_clone_survival_folder("bowser_castle", (21888, 0, 21888), (22114, 81, 22133), 100)
#22896 0 22904 23103 86 23109
generate_clone_survival_folder("snow_travel", (22896, 0, 22904), (23103, 86, 23109), 100)
#25961 -64 25944 26099 100 26028
generate_clone_survival_folder("cathedrale_liege", (25961, -64, 25944), (26099, 100, 26028), 100)
#26982 0 26969 27018 61 27031
generate_clone_survival_folder("layers_1", (26982, 0, 26969), (27018, 61, 27031), 100)
#27969 63 27969 28031 82 28031
generate_clone_survival_folder("spleef_1", (27969, 63, 27969), (28031, 82, 28031), 87)
#28987 100 28987 29031 155 29013
generate_fill_survival_folder("de_a_coudre_1", (28987, 100, 28987), (29031, 155, 29013), "water", "#switch:de_a_coudre")
#30987 100 30987 31011 103 31013
generate_fill_survival_folder("mlg_a_coudre_1", (30987, 100, 30987), (31011, 103, 31013), "air", "#switch:de_a_coudre")
#31950 0 31950 32050 44 32050
generate_clone_survival_folder("zonweeb_main", (31950, 0, 31950), (32050, 44, 32050), 100)
#33813 89 33873 34000 0 34000
generate_clone_survival_folder("jayl_dark_forest", (33813, 0, 33873), (34000, 89, 34000), 100)
#35827 -64 35668 36340 99 36180
generate_clone_survival_folder("operation_pigclaw", (35827, -64, 35668), (36340, 99, 36180), 100)
#37986 0 37974 38014 16 38026
generate_clone_survival_folder("pitch_creep_2", (37986, 0, 37974), (38014, 16, 38026), 100)
#39000 0 39000 39143 69 39221
generate_clone_survival_folder("dark_forest_hills", (39000, 0, 39000), (39143, 69, 39221), 100)
#39900 -64 39900 40100 100 40100
generate_clone_survival_folder("paralya_lobby_noel", (39900, -64, 39900), (40100, 100, 40100), 100)
#41000 -63 40892 41267 89 41000
generate_clone_survival_folder("huge_cargo", (41000, -64, 40892), (41267, 89, 41000), 100)
#41935 0 41942 42065 38 42058
generate_clone_survival_folder("ghost_town", (41935, 0, 41942), (42065, 38, 42058), 100)
#45788 -64 45849 46136 126 46187
generate_clone_survival_folder("taroatlas_soviet_prison", (45788, -64, 45849), (46136, 126, 46187), 128)
#46971 0 46971 47036 42 47042
generate_clone_survival_folder("desert_grand_library", (46971, 0, 46971), (47036, 42, 47042), 100)
#47930 0 47930 48070 84 48070
generate_clone_survival_folder("new_grounds", (47930, 0, 47930), (48070, 84, 48070), 100)
#48900 0 48900 49100 47 49100
generate_clone_survival_folder("cookie_wars", (48900, 0, 48900), (49100, 47, 49100), 100)
#49906 0 49918 50145 60 50103
generate_clone_survival_folder("snow_hills", (49906, 0, 49918), (50145, 60, 50103), 100)
#51899 -64 51853 52115 92 52071
generate_clone_survival_folder("vilarles_castillo", (51899, -64, 51853), (52115, 92, 52071), 100)
#52915 0 52876 53040 57 53094
generate_clone_survival_folder("zonweeb_highschool", (52915, 0, 52876), (53040, 57, 53094), 100)
#53977 0 53994 54008 40 54100
generate_clone_survival_folder("enigma_lab_1", (53977, 0, 53994), (54008, 40, 54100), 100)
#54979 0 54996 55020 39 55037
generate_clone_survival_folder("sumo_lawef", (54979, 0, 54996), (55020, 39, 55037), 100)
#57000 0 57000 57074 55 57113
generate_clone_survival_folder("find_the_shulker", (57000, 0, 57000), (57074, 55, 57113), 100)
#58000 0 58000 58160 91 58188
generate_clone_survival_folder("scartmania", (58000, 0, 58000), (58160, 91, 58188), 100)
#59000 0 59000 59160 47 59124
generate_clone_survival_folder("colliseum", (59000, 0, 59000), (59160, 47, 59124), 100)
#60000 0 60000 60184 73 60066
generate_clone_survival_folder("scary_labyrinth", (60000, 0, 60000), (60184, 73, 60066), 100)
#61000 0 61000 61084 88 61049
generate_clone_survival_folder("snk_tower", (61000, 0, 61000), (61084, 88, 61049), 100)
#62000 0 62000 62088 59 62093
generate_clone_survival_folder("blindtest", (62000, 0, 62000), (62088, 59, 62093), 100)
# Drive the pig (63000)
#64000 0 64000 64101 53 64126 
generate_clone_survival_folder("kart_racer_relai", (64000, 0, 64000), (64101, 53, 64126), 100)
#65000 0 65000 65099 94 65103
generate_clone_survival_folder("orange_rings", (65000, 0, 65000), (65099, 94, 65103), 100)
#66000 0 66000 66085 56 66080
generate_clone_survival_folder("find_the_wool", (66000, 0, 66000), (66085, 56, 66080), 100)
#67000 0 67000 67065 33 67073
generate_clone_survival_folder("snk_lab_s9", (67000, 0, 67000), (67065, 33, 67073), 100)
#68000 0 68000 68024 20 68031
generate_clone_survival_folder("plucky_penguins", (68000, 0, 68000), (68024, 20, 68031), 100)
#69000 -63 69000 69148 60 69106
generate_clone_survival_folder("warden_escape_statue", (69000, -64, 69000), (69148, 60, 69106), 100)
#70000 0 70000 70303 64 70287
generate_clone_survival_folder("giant_zoo", (70000, 0, 70000), (70303, 64, 70287), 100)
#71000 0 71000 71170 70 71160
generate_clone_survival_folder("hider_mansion", (71000, 0, 71000), (71170, 70, 71160), 100)
#72000 0 72000 72207 51 72220
generate_clone_survival_folder("nuketown", (72000, 0, 72000), (72207, 51, 72220), 100)
#73000 0 73000 73076 29 73083
generate_clone_survival_folder("enigma_lab_2", (73000, 0, 73000), (73076, 29, 73083), 100)



# //replace command_block,chain_command_block,repeating_command_block,granite,diorite,andesite,gravel stone

# Layers 2 (74000)
# SNK Lab s11 (75000)
# Fish the pig (76000)
# Sky Island Tower (77000)
# Sprucy Village (78000)
# Survival Boat (79000)
# Sky Tower (80000)
# Purple Sky Island (81000)
# Sea Artificial Island (82000)
# Lava Castle (83000)
# Spruce Dojo (84000)
# Highland Mansion (85000)
# Sakura House (86000)
# Red Temple (87000)
# Nature House (88000)
# Flower Village (89000)
# Japanese Village (90000)
# Whity Lab (91000)
# Snowy Village (92000)
# Werewolf Village (93000)
# Wyvern Towers (94000)

## Generate the load file for the survival maps
# Create the file and write the first lines
load_file = open("load_survival.mcfunction", "w")
load_file.write("\n## This file is generated by the 'generate_survival_folder.py' script")
load_file.write("\n## Do not edit this file but the script instead")
load_file.write("\n\n")
load_file.write("# Load the survival maps\n")

# Write the lines
for name in generated_maps:
	load_file.write(f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/\n')

# Close the file
load_file.write("\n")
load_file.close()

## Generate the regenerate_map file for the survival maps
# Create the file and write the first lines
regenerate_file = open("regenerate_map.mcfunction", "w")
regenerate_file.write("\n## This file is generated by the 'generate_survival_folder.py' script")
regenerate_file.write("\n## Do not edit this file but the script instead")
regenerate_file.write("\n\n")
regenerate_file.write("# Regenerate the survival maps\n")

# Write the lines
for name in generated_maps:
	regenerate_file.write(f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/regenerate\n')

# Write the last line
regenerate_file.write("\n# Remove the map from the storage")
regenerate_file.write("\ndata remove storage switch:main map\n")

# Close the file
regenerate_file.write("\n")
regenerate_file.close()

## Print the execution time
print(f"\n{GREEN}Execution time of the script: {RED}{round(time.time() - start_time, 5)}{GREEN} seconds{RESET}\n")

