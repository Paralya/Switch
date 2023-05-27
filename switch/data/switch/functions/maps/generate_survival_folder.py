
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

# Create the survival folder if it doesn't exist
createFolderIfNotExists("survival")

# List of the maps that have been generated
generated_maps = []

# Create the function that generates a folder for a gamemode with regeneration using /clone
def generate_clone_survival_folder(name: str, start_pos: tuple, end_pos: tuple, paste_start_height: int, kart_racer: list = [], override_tp_coords: tuple = None):
	""" Generates a folder for a gamemode using /clone for regeneration
	Args:
		name				(str)	: The name of the gamemode
		start_pos			(tuple)	: The coordinates of the start position (y should be 0)
		end_pos				(tuple)	: The coordinates of the end position (y should be < 100)
		paste_start_height	(int)	: The y coordinate where the regeneration starts
		kart_racer			(list)	: Start position (tuple), orientation (int), and count (int) for the kart racer start line (optional)
		override_tp_coords	(tuple)	: The coordinates to teleport the players (optional)

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
	tp_coords, x, y, z = createTpCoordsStringFromStartAndEnd(start_pos, end_pos, paste_start_height)
	if override_tp_coords != None:
		tp_coords = createTpCoordsStringFromXYZ(override_tp_coords)
	createMainFile(name, kart_racer + [tp_coords])
	createTeleportPlayersFile(name, tp_coords, kart_racer)

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
	particle_count = 250
	while minY <= maxY:

		# Reset the split coordinates iterator & Create the clone commands
		for k in splitted_coordinates:

			# Write the particle command
			dx = (k[2] - k[0]) // 2
			dz = (k[3] - k[1]) // 2
			f.write(f"{base_condition} {i} run particle cloud {k[0] + dx} {minY + 0.5} {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force\n")

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
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/clone]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	return None

# Create the function that generates a folder for a gamemode with regeneration using the fill command
def generate_fill_survival_folder(name: str, start_pos: tuple, end_pos: tuple, block_that_replace: str, block_tag_to_replace: str, override_tp_coords: tuple = None):
	""" Generate a folder for a gamemode with regeneration using the fill command
	Args:
		name					(str)	: The name of the gamemode
		start_pos				(tuple)	: The start position of the regeneration area
		end_pos					(tuple)	: The end position of the regeneration area
		block_that_replace		(str)	: The block that replace the blocks with the tag
		block_tag_to_replace	(str)	: The block tag to replace
		override_tp_coords		(tuple)	: The coordinates to teleport the players (optional)

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
	tp_coords, x, y, z = createTpCoordsStringFromStartAndEnd(start_pos, end_pos)
	if override_tp_coords != None:
		tp_coords = createTpCoordsStringFromXYZ(override_tp_coords)
	createMainFile(name)
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
	particle_count = int(250 / len(splitted_coordinates)) + 1
	while minY <= maxY:

		# Create the clone commands
		for k in splitted_coordinates:

			# Write the particle command
			dx = (k[2] - k[0]) // 2
			dz = (k[3] - k[1]) // 2
			f.write(f"{base_condition} {i} run particle cloud {k[0] + dx} {minY + 1} {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force\n")

			# Write the fill command
			f.write(f"{base_condition} {i} run fill {k[0]} {minY} {k[1]} {k[2]} {minY} {k[3]} {block_that_replace} replace {block_tag_to_replace}\n")

		# Increment the regeneration tick (x1 because /fill is faster than /clone)
		i += 1

		# Increment the y coordinate of the fill command
		minY += 1

	# Write the last lines
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/fill]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height = y)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	return None



## Execute the functions
# Generate the folders for the survival maps
generate_clone_survival_folder("laser_game", (499, 0, 499), (551, 43, 551), 91, override_tp_coords = (524, 102, 523))
generate_clone_survival_folder("pitchout_1", (950, 0, 1050), (1050, 44, 1150), 95, override_tp_coords = (1000, 105, 1000))
generate_clone_survival_folder("traitor_original", (1408, 0, 1423), (1592, 99, 1578), 114, override_tp_coords = (1500, 121, 1500))
generate_clone_survival_folder("zone_51", (1947, 0, 1937), (2055, 70, 2063), 100, override_tp_coords = (2000, 158, 2000))
generate_clone_survival_folder("spectre_original", (2459, 0, 2452), (2545, 85, 2547), 100, override_tp_coords = (2500, 127, 2500))
generate_fill_survival_folder("glassrunner", (2750, -64, 2750), (3250, 384, 3250), "air", "#switch:glassrunner/glass", override_tp_coords = (3000, 130, 3000))
generate_clone_survival_folder("mushroom_plains", (3939, 0, 3939), (4061, 50, 4061), 100, override_tp_coords = (3992, 126, 4000))
generate_clone_survival_folder("friends_black_ball", (5934, 0, 5933), (6063, 73, 6067), 100, override_tp_coords = (6000, 105, 6000))
generate_clone_survival_folder("enchanting_island", (6970, 0, 6970), (7030, 49, 7030), 100, override_tp_coords = (7000, 136, 7000))
generate_clone_survival_folder("friends_oneforall", (7977, 0, 7976), (8025, 31, 8024), 100, override_tp_coords = (8000, 111, 7998))
generate_clone_survival_folder("warden_forest", (9940, 0, 9940), (10060, 64, 10060), 100, override_tp_coords = (10000, 103, 10000))
generate_clone_survival_folder("friends_pvpbox_ice", (10964, 0, 10968), (11029, 42, 11033), 100, override_tp_coords = (11000, 120, 11000))
generate_clone_survival_folder("friends_pvpbox_hills", (11957, 0, 11965), (12047, 67, 12055), 100, override_tp_coords = (11999, 123, 11996))
generate_clone_survival_folder("friends_pvpbox_end", (12955, 0, 12955), (13046, 33, 13045), 100, override_tp_coords = (13000, 117, 13000))
generate_fill_survival_folder("rush_the_point_1", (13901, 0, 13901), (14099, 255, 14099), "air", "#switch:rush_the_point/placed", override_tp_coords = (14000, 101, 14000))
generate_clone_survival_folder("friends_cube_lobby", (16960, 0, 16960), (17040, 45, 17040), 100, override_tp_coords = (17000, 119, 17024))
generate_clone_survival_folder("baby_park", (20862, 0, 20908), (21132, 95, 21099), 100, kart_racer = [(21003.5, 131.69, 21014.5), 90, 20], override_tp_coords = (21003, 132, 21011))
generate_clone_survival_folder("bowser_castle", (21888, 0, 21888), (22114, 81, 22133), 100, kart_racer = [(21953.5, 130.69, 22056.5), 180, 20], override_tp_coords = (21956, 131, 22056))
generate_clone_survival_folder("snow_travel", (22896, 0, 22904), (23103, 86, 23109), 100, kart_racer = [(22958.5, 136.69, 22945.5), 270, 20], override_tp_coords = (22958, 137, 22948))
generate_clone_survival_folder("cathedrale_liege", (25961, -64, 25944), (26099, 100, 26028), 100, override_tp_coords = (26000, 120, 26000))
generate_clone_survival_folder("layers_2_teams", (26982, 0, 26969), (27018, 61, 27031), 100, override_tp_coords = (27000, 157, 27000))
generate_clone_survival_folder("spleef_1", (27969, 63, 27969), (28031, 82, 28031), 87, override_tp_coords = (28000, 100, 28000))
generate_fill_survival_folder("de_a_coudre_1", (28987, 100, 28987), (29031, 155, 29013), "water", "#switch:de_a_coudre", override_tp_coords = (29000, 101, 29000))
generate_fill_survival_folder("mlg_a_coudre_1", (30987, 100, 30987), (31011, 103, 31013), "air", "#switch:de_a_coudre", override_tp_coords = (31000, 101, 31000))
generate_clone_survival_folder("zonweeb_main", (31950, 0, 31950), (32050, 44, 32050), 100, override_tp_coords = (32000, 116, 32000))
generate_clone_survival_folder("jayl_dark_forest", (33813, 0, 33873), (34000, 89, 34000), 100, override_tp_coords = (33939, 134, 33930))
generate_clone_survival_folder("operation_pigclaw", (35827, -64, 35668), (36340, 99, 36180), 100, override_tp_coords = (36041, 151, 36013))
generate_clone_survival_folder("pitch_creep_2", (37986, 0, 37974), (38014, 16, 38026), 100, override_tp_coords = (38000, 108, 38000))
generate_clone_survival_folder("dark_forest_hills", (39000, 0, 39000), (39143, 69, 39221), 100, override_tp_coords = (39076, 138, 39134))
generate_clone_survival_folder("paralya_lobby_noel", (39900, -64, 39900), (40100, 100, 40100), 100, override_tp_coords = (40000, 186, 40000))
generate_clone_survival_folder("huge_cargo", (41000, -64, 40892), (41267, 89, 41000), 100, override_tp_coords = (41155, 173, 40945))
generate_clone_survival_folder("ghost_town", (41935, 0, 41942), (42065, 38, 42058), 100, override_tp_coords = (42000, 112, 42000))
generate_clone_survival_folder("taroatlas_soviet_prison", (45788, -64, 45849), (46136, 126, 46187), 128, override_tp_coords = (45998, 209, 45984))
generate_clone_survival_folder("desert_grand_library", (46971, 0, 46971), (47036, 42, 47042), 100, override_tp_coords = (47003, 108, 47006))
generate_clone_survival_folder("new_grounds", (47930, 0, 47930), (48070, 84, 48070), 100, override_tp_coords = (48000, 113, 48000))
generate_clone_survival_folder("cookie_wars", (48900, 0, 48900), (49100, 47, 49100), 100, override_tp_coords = (49000, 123, 49000))
generate_clone_survival_folder("snow_hills", (49906, 0, 49918), (50145, 60, 50103), 100, override_tp_coords = (50025, 120, 50010))
generate_clone_survival_folder("vilarles_castillo", (51899, -64, 51853), (52115, 92, 52071), 100, override_tp_coords = (52000, 135, 52000))
generate_clone_survival_folder("zonweeb_highschool", (52915, 0, 52876), (53040, 57, 53094), 100, override_tp_coords = (53000, 112, 53000))
generate_clone_survival_folder("enigma_lab_1", (53977, 0, 53994), (54008, 40, 54100), 100, override_tp_coords = (None))
generate_clone_survival_folder("sumo_lawef", (54979, 0, 54996), (55020, 39, 55037), 100, override_tp_coords = (54999, 112, 55016))
generate_clone_survival_folder("find_the_shulker", (57000, 0, 57000), (57074, 55, 57113), 100, override_tp_coords = (57037, 120, 57056))
generate_clone_survival_folder("scartmania", (58000, 0, 58000), (58160, 91, 58188), 100, override_tp_coords = (58008, 111, 58020))
generate_clone_survival_folder("colliseum", (59000, 0, 59000), (59160, 47, 59124), 100, override_tp_coords = (59080, 111, 59062))
generate_clone_survival_folder("scary_labyrinth", (60000, 0, 60000), (60184, 73, 60066), 100, override_tp_coords = (60091, 110, 60037))
generate_clone_survival_folder("snk_tower", (61000, 0, 61000), (61084, 88, 61049), 100, override_tp_coords = (None))
generate_clone_survival_folder("blindtest", (62000, 0, 62000), (62088, 59, 62093), 100, override_tp_coords = (62044, 111, 62046))
# Drive the pig (63000)
generate_clone_survival_folder("kart_racer_relai", (64000, 0, 64000), (64101, 53, 64126), 100, override_tp_coords = (64037, 112, 64052))
generate_clone_survival_folder("orange_rings", (65000, 0, 65000), (65099, 94, 65103), 100, override_tp_coords = (65006, 109, 65003))
generate_clone_survival_folder("find_the_wool", (66000, 0, 66000), (66085, 56, 66080), 100, override_tp_coords = (66042, 115, 66040))
generate_clone_survival_folder("snk_lab_s11", (67000, 0, 67000), (67065, 33, 67073), 100, override_tp_coords = (67037, 128, 67037))
generate_clone_survival_folder("plucky_penguins", (68000, 0, 68000), (68024, 20, 68031), 100, override_tp_coords = (68012, 116, 68015))
generate_clone_survival_folder("warden_escape_statue", (69000, -64, 69000), (69148, 60, 69106), 100, override_tp_coords = (69055, 136, 69050))
generate_clone_survival_folder("giant_zoo", (70000, 0, 70000), (70303, 64, 70287), 100, override_tp_coords = (70026, 123, 70126))
generate_clone_survival_folder("hider_mansion", (71000, 0, 71000), (71170, 70, 71160), 100, override_tp_coords = (71073, 110, 71080))
generate_clone_survival_folder("nuketown", (72000, 0, 72000), (72207, 51, 72220), 100, override_tp_coords = (72109, 111, 72109))
generate_clone_survival_folder("enigma_lab_2", (73000, 0, 73000), (73076, 29, 73083), 100, override_tp_coords = (None))
generate_clone_survival_folder("layers_4_teams", (74000, 0, 74000), (74036, 61, 74062), 100, override_tp_coords = (None))
generate_clone_survival_folder("snk_lab_s9", (75000, 0, 75000), (75089, 35, 75076), 100, override_tp_coords = (None))
generate_clone_survival_folder("sky_island_tower", (77000, -64, 77000), (77097, 81, 77094), 100, override_tp_coords = (77052, 183, 77038))
generate_clone_survival_folder("sprucy_village", (78000, 0, 78000), (78171, 81, 78112), 100, override_tp_coords = (78085, 119, 78055))
generate_clone_survival_folder("survival_boat", (79000, 0, 79000), (79126, 99, 79102), 100, override_tp_coords = (None))
# Sky Tower (80000) #TODO : Malaise c'est trop grand
generate_clone_survival_folder("sky_tower", (80000, -64, 80000), (80142, 147, 80142), 150, override_tp_coords = (80071, 320, 80071))
generate_fill_survival_folder("purple_sky_island", (80824, 0, 80822), (81219, 235, 81182), "air", "#switch:purple_sky_island", override_tp_coords = (81000, 101, 81000))
# Sea Artificial Island (82000)
generate_clone_survival_folder("lava_castle", (83000, 0, 83000), (83063, 85, 83063), 100, override_tp_coords = (83032, 132, 83039))
generate_clone_survival_folder("spruce_dojo", (84000, 0, 84000), (84083, 46, 84069), 100, override_tp_coords = (84041, 109, 84035))
generate_clone_survival_folder("highland_mansion", (85000, 0, 85000), (85150, 72, 85142), 100, override_tp_coords = (None))
generate_clone_survival_folder("sakura_house", (86000, 0, 86000), (86121, 94, 86135), 100, override_tp_coords = (86072, 117, 86100))
generate_clone_survival_folder("red_temple", (87000, 0, 87000), (87045, 40, 87094), 100, override_tp_coords = (87023, 110, 87058))
generate_clone_survival_folder("nature_house", (88000, 0, 88000), (88068, 32, 88068), 100, override_tp_coords = (88039, 110, 88033))
generate_clone_survival_folder("flower_village", (89000, 0, 89000), (89422, 94, 89532), 100, override_tp_coords = (89311, 116, 89291))
generate_clone_survival_folder("japanese_village", (90000, 0, 90000), (90224, 81, 90286), 100, override_tp_coords = (90106, 116, 90167))
generate_clone_survival_folder("whity_lab", (91000, 0, 91000), (91102, 35, 91102), 100, override_tp_coords = (91051, 112, 91051))
generate_clone_survival_folder("snowy_village", (92000, 0, 92000), (92200, 70, 92229), 100, override_tp_coords = (92108, 123, 92090))
generate_clone_survival_folder("werewolf_village", (93000, 0, 93000), (93122, 64, 93122), 100, override_tp_coords = (93061, 115, 93061))
generate_clone_survival_folder("wyvern_towers", (94000, 0, 94000), (94076, 99, 94076), 100, override_tp_coords = (94036, 157, 94037))

# //replace command_block,chain_command_block,repeating_command_block,granite,diorite,andesite,gravel,copper_ore,coal_ore,iron_ore stone
# //replace shulker_box,yellow_shulker_box,red_shulker_box,green_shulker_box,blue_shulker_box,purple_shulker_box,orange_shulker_box,white_shulker_box,black_shulker_box,pink_shulker_box,cyan_shulker_box,light_blue_shulker_box,lime_shulker_box air
# //replace chest,barrel,dropper,trapped_chest air

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

## Generate the spread_one_player file for the survival maps
# Create the file and write the first lines
spread_file = open("spread_one_player.mcfunction", "w")
spread_file.write("\n## This file is generated by the 'generate_survival_folder.py' script")
spread_file.write("\n## Do not edit this file but the script instead")
spread_file.write("\n\n")
spread_file.write("# Spread one player on the survival maps\n")

# Write the lines
for name in generated_maps:
	spread_file.write(f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/spread_one_player\n')

# Close the file
spread_file.write("\n")
spread_file.close()

## Print the execution time
print(f"\n{GREEN}Execution time of the script: {RED}{round(time.time() - start_time, 5)}{GREEN} seconds{RESET}\n")

