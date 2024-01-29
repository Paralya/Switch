
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
survival_maps = []

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

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = paste_start_height					# The y coordinate where the regeneration starts
	maxY = minY - start_pos[1] + end_pos[1]		# The y coordinate where the regeneration ends

	# Write the first lines
	f = writeFirstLinesOfRegenerate(name, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	# Open the file
	marker_file = open(f"survival/{name}/regeneration_on_marker.mcfunction", "w", encoding = "utf-8")

	# Write the first line
	marker_file.write("\n")
	marker_file.write(f"execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{name}_y switch.data\n\n")

	# Write the clone and particle commands
	i = 0
	particle_count = 250
	dy = paste_start_height - start_pos[1]
	for k in splitted_coordinates:
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		marker_file.write(f"execute if score #rg_{name}_mod switch.data matches {i} at @s run particle cloud {k[0] + dx} ~{dy + 0.5} {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force\n")
		marker_file.write(f"execute if score #rg_{name}_mod switch.data matches {i} at @s run clone {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} {k[0]} ~{dy} {k[1]} replace force\n")
		i += 1

	# Write kill item entities command & the scoreboard commands
	marker_file.write("\n")
	marker_file.write(f"execute if score #rg_{name}_mod switch.data matches {len(splitted_coordinates)} run kill @e[type=item,x={x},y={y},z={z},distance=..1000]\n")
	marker_file.write(f"scoreboard players add #rg_{name}_mod switch.data 1\n")
	marker_file.write(f"execute if score #rg_{name}_mod switch.data matches {len(splitted_coordinates)} run scoreboard players add #rg_{name}_y switch.data 1\n")
	marker_file.write(f"execute if score #rg_{name}_mod switch.data matches {len(splitted_coordinates)} run scoreboard players set #rg_{name}_mod switch.data 0\n")

	# Write the kill command
	marker_file.write("\n")
	marker_file.write("kill @s\n")
	marker_file.write("\n")
	marker_file.close()


	# Write the last lines
	i = (maxY - minY + 1) * len(splitted_coordinates)
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/clone]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height)

	# Write the scan_doors file
	scanEveryDoorInMap(name, start_pos, end_pos, paste_start_height, splitted_coordinates)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	survival_maps.append(name)
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

	# More variables
	y = start_pos[1]							# The first y coordinate
	minY = y									# The y coordinate where the regeneration starts

	# Write the first lines
	f = writeFirstLinesOfRegenerate(name, base_condition, splitted_coordinates)

	## Write the marker part for the regeneration
	# Open the file
	marker_file = open(f"survival/{name}/regeneration_on_marker.mcfunction", "w", encoding = "utf-8")

	# Write the first line
	marker_file.write("\n")
	marker_file.write(f"execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_{name}_y switch.data\n\n")

	# Write the clone and particle commands
	particle_count = int(250 / len(splitted_coordinates)) + 1
	for k in splitted_coordinates:
		dx = (k[2] - k[0]) // 2
		dz = (k[3] - k[1]) // 2
		marker_file.write(f"execute at @s run particle cloud {k[0] + dx} ~1 {k[1] + dz} {dx} 0 {dz // 2} 0 {particle_count} force\n")
		marker_file.write(f"execute at @s run fill {k[0]} ~ {k[1]} {k[2]} ~ {k[3]} {block_that_replace} replace {block_tag_to_replace}\n")

	# Write kill item entities command & the scoreboard commands
	marker_file.write("\n")
	marker_file.write(f"kill @e[type=item,x={x},y={y},z={z},distance=..1000]\n")
	marker_file.write(f"scoreboard players add #rg_{name}_y switch.data 1\n")

	# Write the kill command
	marker_file.write("\n")
	marker_file.write("kill @s\n")
	marker_file.write("\n")
	marker_file.close()

	# Write the last lines
	i = (end_pos[1] - minY) + 1
	writeLastLinesOfRegenerate(f, name, base_condition, splitted_coordinates, (x, y, z), i, divider, "[/fill]")

	# Write the spread_players file
	createSpreadPlayersFile(name, start_pos, end_pos, paste_start_height = y)

	# Add the map to the list of the generated maps and return
	generated_maps.append(name)
	return None



## Execute the functions
# Generate the folders for the survival maps
generate_clone_survival_folder("laser_game", (499, 0, 499), (551, 43, 551), 91, override_tp_coords = (524, 102, 523))
generate_clone_survival_folder("pitchout_1", (950, 0, 950), (1050, 44, 1050), 95, override_tp_coords = (1000, 105, 1000))
generate_clone_survival_folder("traitor_original", (1408, 0, 1423), (1592, 63, 1578), 114, override_tp_coords = (1500, 121, 1500))
generate_clone_survival_folder("area_51", (1947, 0, 1937), (2055, 92, 2063), 100, override_tp_coords = (2004, 170, 2002))
generate_clone_survival_folder("spectre_original", (2459, 0, 2452), (2545, 85, 2547), 100, override_tp_coords = (2500, 127, 2500))
generate_fill_survival_folder("glassrunner", (2750, -64, 2750), (3250, 320, 3250), "air", "#switch:glassrunner/glass", override_tp_coords = (3000, 130, 3000))
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
generate_clone_survival_folder("cathedrale_liege", (25961, -64, 25944), (26099, 99, 26028), 100, override_tp_coords = (26000, 120, 26000))
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
generate_clone_survival_folder("ghost_town", (42000, 0, 42000), (42070, 25, 42056), 100, override_tp_coords = (42037, 113, 42028))
generate_clone_survival_folder("taroatlas_soviet_prison", (45788, -64, 45849), (46136, 126, 46187), 128, override_tp_coords = (45998, 209, 45984))
generate_clone_survival_folder("desert_grand_library", (46971, 0, 46971), (47036, 42, 47042), 100, override_tp_coords = (47003, 108, 47006))
generate_clone_survival_folder("new_grounds", (47930, 0, 47930), (48070, 84, 48070), 100, override_tp_coords = (48000, 113, 48000))
generate_clone_survival_folder("cookie_wars", (48900, 0, 48900), (49100, 47, 49100), 100, override_tp_coords = (49000, 123, 49000))
generate_clone_survival_folder("snow_hills", (49906, 0, 49918), (50145, 60, 50103), 100, override_tp_coords = (50025, 120, 50010))
generate_clone_survival_folder("vilarles_castillo", (51899, -64, 51853), (52076, 92, 52071), 100, override_tp_coords = (52000, 135, 52000))
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
# Maps Infinitri customs à fusionner (82000)
generate_clone_survival_folder("lava_castle", (83000, 0, 83000), (83063, 85, 83063), 100, override_tp_coords = (83032, 132, 83039))
generate_clone_survival_folder("spruce_dojo", (84000, 0, 84000), (84083, 35, 84069), 100, override_tp_coords = (84041, 109, 84035))
generate_clone_survival_folder("highland_mansion", (85000, 0, 85000), (85150, 72, 85142), 100, override_tp_coords = (None))
generate_clone_survival_folder("sakura_house", (86000, 0, 86000), (86121, 94, 86135), 100, override_tp_coords = (86072, 117, 86100))
generate_clone_survival_folder("red_temple", (87000, 0, 87000), (87045, 40, 87094), 100, override_tp_coords = (87023, 110, 87058))
generate_clone_survival_folder("nature_house", (88000, 0, 88000), (88068, 98, 88068), 100, override_tp_coords = (88039, 110, 88033))
generate_clone_survival_folder("flower_village", (89000, 0, 89000), (89422, 94, 89532), 100, override_tp_coords = (89311, 116, 89291))
generate_clone_survival_folder("japanese_village", (90000, 0, 90000), (90224, 81, 90286), 100, override_tp_coords = (90106, 116, 90167))
generate_clone_survival_folder("whity_lab", (91000, 0, 91000), (91102, 87, 91102), 100, override_tp_coords = (91051, 112, 91051))
generate_clone_survival_folder("snowy_village", (92000, 0, 92000), (92200, 70, 92229), 100, override_tp_coords = (92108, 123, 92090))
generate_clone_survival_folder("werewolf_village", (93000, 0, 93000), (93122, 64, 93122), 100, override_tp_coords = (93061, 115, 93061))
generate_clone_survival_folder("wyvern_towers", (94000, 0, 94000), (94076, 99, 94076), 100, override_tp_coords = (94036, 157, 94037))
generate_clone_survival_folder("lg_medieval", (95000, -63, 95000), (95219, 41, 95203), 100, override_tp_coords = (95126, 120, 95100))
generate_clone_survival_folder("lg_village", (96000, -63, 96000), (96246, 50, 96239), 100, override_tp_coords = (96128, 113, 96118))
generate_clone_survival_folder("lightium_spawn", (97000, 0, 97000), (97129, 43, 97129), 100, override_tp_coords = (97065, 111, 97065))
generate_clone_survival_folder("paralya_uhc_lobbies", (98000, 0, 98000), (98090, 93, 98090), 100, override_tp_coords = (98037, 154, 98046))
generate_clone_survival_folder("paralya_lobby", (99000, -63, 99000), (99200, 98, 99200), 100, override_tp_coords = (99100, 181, 99100))
generate_clone_survival_folder("sheepwars_dirigeables", (100028, -63, 100000), (100135, 25, 100103), 100, override_tp_coords = (100156, 163, 100122))
generate_clone_survival_folder("stardust_spawn", (101000, 0, 101000), (101120, 90, 101120), 100, override_tp_coords = (101060, 156, 101060))
generate_clone_survival_folder("stardust_boss_zone", (103000, -64, 103000), (103132, 49, 103165), 100, override_tp_coords = (103057, 154, 103095))
generate_clone_survival_folder("stardust_boss_zone_nether", (104000, -63, 104000), (104132, 65, 104165), 100, override_tp_coords = (104057, 159, 104095))
generate_clone_survival_folder("stardust_pvp_zone", (105000, -63, 105000), (105291, 79, 105314), 100, override_tp_coords = (105164, 158, 105165))
generate_clone_survival_folder("stardust_prison", (106000, 0, 106000), (106132, 57, 106178), 100, override_tp_coords = (106067, 115 ,106064))
generate_clone_survival_folder("stardust_vip_zone", (107000, 0, 107000), (107113, 50, 107085), 100, override_tp_coords = (107056, 116, 107017))
generate_clone_survival_folder("end_factory", (108000, -63, 108000), (108178, 40, 108129), 100, override_tp_coords = (108146, 133, 108076))
generate_clone_survival_folder("tnt_run_futuristic", (109000, 0, 109000), (109059, 68, 109046), 100, override_tp_coords = (109029, 148, 109022))
generate_clone_survival_folder("nuketown_no_barrier", (111000, 0, 111000), (111207, 51, 111220), 100, override_tp_coords = (111109, 111, 111109))
generate_clone_survival_folder("snowball_painter", (112000, 0, 112000), (112043, 33, 112042), 100, override_tp_coords = (112022, 110, 112006))
generate_clone_survival_folder("the_four_elements", (115000, 0, 115000), (115101, 33, 115101), 100, override_tp_coords = (115051, 110, 115052))
generate_clone_survival_folder("winnie_city", (117000, 0, 117000), (117119, 31, 117130), 100, override_tp_coords = (117053, 110, 117052))
generate_clone_survival_folder("remelta_cluedo", (118000, 0, 118000), (118089, 42, 118066), 100, override_tp_coords = (118032, 108, 118030))
generate_clone_survival_folder("arti_box", (119000, 0, 119000), (119047, 34, 119047), 100, override_tp_coords = (119024, 109, 119023))
generate_clone_survival_folder("pitch_creep_nether", (120000, 0, 120000), (120037, 16, 120020), 100, override_tp_coords = (120019, 115, 120010))
generate_clone_survival_folder("bombardement", (121000, 0, 121000), (121115, 77, 121087), 100, override_tp_coords = (121057, 110, 121064))
generate_clone_survival_folder("nether_storm", (122000, 0, 122000), (122111, 49, 122074), 100, override_tp_coords = (122034, 119, 122037))
generate_clone_survival_folder("pitchout_halloween", (125000, 0, 125000), (125122, 28, 125122), 100, override_tp_coords = (125061, 112, 125061))
generate_clone_survival_folder("cigogne", (126000, 0, 126000), (126108, 47, 126108), 100, override_tp_coords = (126059, 108, 126061))
generate_clone_survival_folder("ancienne_egypte_2013", (128000, 0, 128000), (128095, 76, 128113), 100, override_tp_coords = (128048, 121, 128105))
generate_clone_survival_folder("old_japan_apocalypse", (129000, 0, 129000), (129102, 52, 129102), 100, override_tp_coords = (129041, 108, 129043))
generate_clone_survival_folder("lost_graveyard_remastered", (127000, 0, 127000), (127150, 62, 127134), 100, override_tp_coords = (127030, 119, 127111))
generate_clone_survival_folder("jn_nature_box", (130000, 0, 130000), (130192, 80, 130134), 100, override_tp_coords = (130098, 169, 130067))
generate_clone_survival_folder("block_party_lobby", (131000, 0, 131000), (131222, 79, 131148), 100, override_tp_coords = (131047, 116, 131074))
generate_clone_survival_folder("jn_countries_castle", (132000, 0, 132000), (132120, 43, 132120), 100, override_tp_coords = (132067, 119, 132060))
generate_clone_survival_folder("jn_ice_castles", (133000, 0, 133000), (133054, 53, 133130), 100, override_tp_coords = (133027, 106, 133069))
generate_clone_survival_folder("jn_murder_mystery", (134000, 0, 134000), (134149, 62, 134123), 100, override_tp_coords = (134095, 119, 134080))
generate_clone_survival_folder("jn_sakura_pvpbox", (135000, 0, 135000), (135100, 38, 135100), 100, override_tp_coords = (135067, 111, 135037))
generate_clone_survival_folder("charly_murder_2018", (136000, 0, 136000), (136052, 31, 136053), 100, override_tp_coords = (136024, 115 ,136029))
generate_clone_survival_folder("jn_one_in_the_chamber_1", (137000, 0, 137000), (137078, 22, 137120), 100, override_tp_coords = (137045, 105, 137047))
generate_clone_survival_folder("jn_one_in_the_chamber_2", (138000, 0, 138000), (138140, 57, 138100), 100, override_tp_coords = (138104, 104, 138042))
generate_clone_survival_folder("overgrown_forest", (139000, 0, 139000), (139091, 50, 139103), 100, override_tp_coords = (139056, 113, 139037))
generate_clone_survival_folder("pretty_garden", (140000, 0, 140000), (140056, 38, 140070), 100, override_tp_coords = (140034, 112, 140035))
generate_clone_survival_folder("jn_biomes_relief", (141000, 0, 141000), (141198, 89, 141139), 100, override_tp_coords = (141137, 167, 141087))
generate_clone_survival_folder("luxium_spectres_remake", (142000, 0, 142000), (142106, 82, 142106), 100, override_tp_coords = (142034, 141, 142026))
generate_clone_survival_folder("sheepwars_bonbons", (143000, 0, 143000), (143083, 83, 143114), 100, override_tp_coords = (143044, 151, 143056))
generate_clone_survival_folder("sheepwars_plateforme", (144000, 0, 144000), (144079, 69, 144075), 100, override_tp_coords = (144044, 142, 144040))
generate_clone_survival_folder("sheepwars_ilots", (145000, 0, 145000), (145092, 93, 145122), 100, override_tp_coords = (145046, 156, 145059))
generate_clone_survival_folder("ctf_plains_castles", (146000, 0, 146000), (146341, 80, 146227), 100, override_tp_coords = (146170, 118, 146114))
generate_clone_survival_folder("ctf_mountains_castles", (147000, -64, 147000), (147363, 98, 147158), 100, override_tp_coords = (147181, 180, 147078))
generate_clone_survival_folder("ctf_flowers", (148000, 0, 148000), (148202, 99, 148105), 100, override_tp_coords = (148047, 118, 14804))

# //replace command_block,chain_command_block,repeating_command_block,granite,diorite,andesite,gravel,copper_ore,coal_ore,iron_ore,lapis_ore,redstone_ore,emerald_ore,diamond_ore stone
# //replace shulker_box,yellow_shulker_box,red_shulker_box,green_shulker_box,blue_shulker_box,purple_shulker_box,orange_shulker_box,white_shulker_box,black_shulker_box,pink_shulker_box,cyan_shulker_box,light_blue_shulker_box,lime_shulker_box air
# //replace chest,barrel,dropper,trapped_chest air

## Generate the support file for door scan
doors = {
	"__types__": ["oak_door", "spruce_door", "birch_door", "jungle_door", "acacia_door", "dark_oak_door", "mangrove_door", "cherry_door", "bamboo_door", "crimson_door", "warped_door", "iron_door"],
    "facing": ["north", "east", "south", "west"],
    "half": ["upper", "lower"],
	"hinge": ["left", "right"],
	"open": ["true", "false"],
	"powered": ["true", "false"]
}
with open("add_door_to_storage.mcfunction", "w", encoding = "utf-8") as f:
	f.write("""
## This file is generated by the 'generate_survival_folder.py' script
## Do not edit this file but the script instead
data modify storage switch:temp compound set value {x:0,y:0,z:0,door:""}
execute store result storage switch:temp compound.x int 1 run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
$scoreboard players add #y switch.data $(additional_height)
execute store result storage switch:temp compound.y int 1 run scoreboard players get #y switch.data
execute store result storage switch:temp compound.z int 1 run data get entity @s Pos[2]
scoreboard players set #success switch.data 0
""")

	for type in doors["__types__"]:
		for facing in doors["facing"]:
			for half in doors["half"]:
				for hinge in doors["hinge"]:
					for is_open in doors["open"]:
						for powered in doors["powered"]:
							f.write(f'execute if score #success switch.data matches 0 store success score #success switch.data if block ~ ~ ~ {type}[facing={facing},half={half},hinge={hinge},open={is_open},powered={powered}] run data modify storage switch:temp compound.door set value "{type}[facing={facing},half={half},hinge={hinge},open={is_open},powered={powered}]"\n')
	f.write("$data modify storage switch:doors $(name) append from storage switch:temp compound\n")

## Generate a file that launch the scan on every map progressively
with open("scan_doors_of_every_maps.mcfunction", "w", encoding = "utf-8") as f:
	f.write("""
## This file is generated by the 'generate_survival_folder.py' script
## Do not edit this file but the script instead
data modify storage switch:maps to_regenerate set value {}
""")
	for name in survival_maps:
		f.write(f"data modify storage switch:maps to_regenerate.{name} set value 1b\n")
	f.write("schedule function switch:maps/loop_scan_doors_of_every_maps 1t\n")
with open("loop_scan_doors_of_every_maps.mcfunction", "w", encoding = "utf-8") as f:
	f.write(f"""
## This file is generated by the 'generate_survival_folder.py' script
## Do not edit this file but the script instead
execute if data storage switch:maps to_regenerate{{{survival_maps[-1]}:1b}} run schedule function switch:maps/loop_scan_doors_of_every_maps 1t
execute if data storage switch:maps to_regenerate{{{survival_maps[0]}:1b}} run function switch:maps/survival/{survival_maps[0]}/scan_doors
""")
	for i in range(1, len(survival_maps)):
		previous_map = survival_maps[i - 1]
		current_map = survival_maps[i]
		f.write(f"execute unless data storage switch:maps to_regenerate.{previous_map} if data storage switch:maps to_regenerate{{{current_map}:1b}} run function switch:maps/survival/{current_map}/scan_doors\n")



## Generate the load file for the survival maps
# Create the file and write the first lines
load_file = open("load_survival.mcfunction", "w", encoding = "utf-8")
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
regenerate_file = open("regenerate_map.mcfunction", "w", encoding = "utf-8")
regenerate_file.write("\n## This file is generated by the 'generate_survival_folder.py' script")
regenerate_file.write("\n## Do not edit this file but the script instead")
regenerate_file.write("\n\n")
regenerate_file.write("# Regenerate the survival maps\n")

# Write the lines
for name in generated_maps:
	regenerate_file.write(f'execute if data storage switch:main {{map:"{name}"}} run function switch:maps/survival/{name}/regenerate\n')

# Write the last lines
regenerate_file.write("\n# Remove the map from the storage")
regenerate_file.write("\ndata remove storage switch:main map\n")
regenerate_file.write("\n# Change score of already regenerated map")
regenerate_file.write("\nscoreboard players set #already_regenerated switch.data 1\n")

# Close the file
regenerate_file.write("\n")
regenerate_file.close()

## Generate a resume_regeneration file for the survival maps
# Create the file and write the first lines
with open("resume_regeneration.mcfunction", "w", encoding = "utf-8") as resume_regeneration_file:
	resume_regeneration_file.write("""

## This file is generated by the 'generate_survival_folder.py' script
## Do not edit this file but the script instead

# Resume the regeneration of the survival maps
""")
	for name in generated_maps:
		resume_regeneration_file.write(f"execute if score #rg_{name} switch.data matches 1.. run function switch:maps/survival/{name}/regenerate\n")
	resume_regeneration_file.write("\n")

## Generate the spread_one_player file for the survival maps
# Create the file and write the first lines
spread_file = open("spread_one_player.mcfunction", "w", encoding = "utf-8")
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



## Zip compress the survival folder
# Create the zip file (compression 9)
import zipfile
zip_path = "../../../../../../switch_survival_maps__pycache__.zip"
zip_file = zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, 9)

# Write every .mcfunction files in this folder
internal_zip_path_base = "data/switch/functions/maps/"
for root, dirs, files in os.walk("."):
	for file in files:
		if file.endswith(".mcfunction"):

			# Write the file
			zip_file.write(os.path.join(root, file), os.path.join(internal_zip_path_base, root, file))

			# Delete the file
			os.remove(os.path.join(root, file))

# Add a pack.mcmeta file
pack_mcmeta_content = """{
	"pack": {
		"pack_format": 15,
		"description": "Survival maps for the Switch"
	}
}
"""
zip_file.writestr("pack.mcmeta", pack_mcmeta_content)

# Close the zip file
zip_file.close()

# Delete the survival folder and subfolders
for name in generated_maps:
	os.rmdir(f"survival/{name}")
os.rmdir("survival")

# Duplicate zip file
import shutil
shutil.copyfile(zip_path, zip_path.replace("__pycache__", ""))
os.remove(zip_path)

## Print the execution time
print(f"\n{GREEN}Execution time of the script: {RED}{round(time.time() - start_time, 5)}{GREEN} seconds{RESET}\n")

