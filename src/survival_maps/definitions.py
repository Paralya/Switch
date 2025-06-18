
# ruff: noqa: E501
# Imports
from user.survival_maps.utils import clone_survival, fill_survival


# Main function calling all the map generation functions
def generate_folders_for_survival_maps() -> None:
	""" Generate the folders for the survival maps:

	- generate_clone_survival_folder: Generate a clone survival folder
	- generate_fill_survival_folder: Generate a fill survival folder

	Args:
		config (dict): The configuration of the project
	"""
	clone_survival(100, (500, 100, 500), (552, 143, 552), ("laser_game", "LaserGame51 (2010 IRL layout)", "Stoupy, Ikinox"), view=(517.62, 111.36, 518.34, -31.98, 9.81))
	clone_survival(100, (1000, 100, 1000), (1100, 144, 1100), ("pitchout_1", "Wet Wood Dome", "Stoupy, ?"), view=(1081.19, 117.69, 1065.08, -245.28, 15.66))
	clone_survival(100, (1500, 100, 1500), (1684, 189, 1655), ("traitor_original", "Traitor Original", "Paralya"), view=(1566.00, 122.20, 1533.79, -56.61, 8.90))
	clone_survival(100, (2000, 100, 2000), (2108, 193, 2126), ("area_51", "Area 51", "Jugou2, Stoupy, TheFRcRaZy"), view=(2046.90, 105.29, 2056.55, -214.60, -2.02))
	clone_survival(100, (2500, 100, 2500), (2586, 185, 2595), ("spectre_original", "Spectre Original", "DIocelot, Stoupy"), view=(2526.27, 150.48, 2573.21, -143.57, 25.80))
	fill_survival((2750, -64, 2750), (3250, 320, 3250), ("glassrunner", "Glassrunner", "AirDox"), "air", "#switch:glassrunner/glass", view=(3003.25, 138.64, 2987.65, 12.58, 56.33))
	clone_survival(100, (3500, 100, 3500), (3540, 140, 3540), ("pitch_creep_1", "Pitch Creep Wood", "Stoupy"), view=(3520.00, 100.00, 3520.00))
	clone_survival(100, (4000, 100, 4000), (4122, 151, 4122), ("mushroom_plains", "Mushroom Plains", "LTHCTheMaster"), view=(4043.11, 134.50, 4116.71, -524.10, 27.19))
	clone_survival(100, (5000, 100, 5000), (5342, 247, 5257), ("boat_race_1", "FriendsCube Boat Race", "Stoupy, TheFRcRaZy, Jugou2"), view=(5244.61, 205.14, 5055.73, -673.11, 33.85), racing_pos=((5199.5, 160.69, 5142.5), 90, 12))
	clone_survival(100, (6000, 100, 6000), (6062, 130, 6159), ("elytra_box", "Elytra Box", "scartvol (Survisland)"), view=(5997.26, 158.50, 6003.76, -743.08, 44.65))
	clone_survival(100, (7000, 100, 7000), (7060, 149, 7060), ("enchanting_island", "Enchanting Island", "Stoupy, ?"), view=(7061.03, 139.35, 7015.43, 64.78, 27.65))
	clone_survival(100, (8000, 100, 8000), (8048, 131, 8048), ("friends_oneforall", "FriendsCube OneForAll", "AirDox, TheFRcRaZy"), view=(8004.36, 119.48, 8009.13 ,-413.64, 24.97))
	clone_survival(100, (9000, 100, 9000), (9035, 192, 9032), ("friends_cube_jump", "FriendsCube Jump", "Stoupy"), view=(9023.97, 101.24, 9004.81, -1036.83, -61.65))
	clone_survival(100, (10000, 100, 10000), (10132, 164, 10132), ("warden_forest", "Warden Forest", "Stoupy"), view=(10065.74, 106.68, 10021.88, -715.99, -10.98))
	clone_survival(100, (11000, 100, 11000), (11065, 142, 11065), ("friends_pvpbox_ice", "FriendsCube PvPbox Ice", "Jugou2"), view=(11012.23, 123.22, 11043.81, -832.35, 10.96))
	clone_survival(100, (12000, 100, 12000), (12090, 167, 12090), ("friends_pvpbox_hills", "FriendsCube PvPbox Hills", "Jugou2"), view=(12059.29, 121.67, 12010.18, -1057.92, -1.65))
	clone_survival(100, (13000, 100, 13000), (13091, 133, 13090), ("friends_pvpbox_end", "FriendsCube PvPbox End", "Jugou2"), view=(13042.52, 113.62, 13065.88, -1235.95, 3.63))
	fill_survival((13901, 0, 13901), (14099, 255, 14099), ("rush_the_point_1", "Rush the Point 1", "Jugou2"), "air", "#switch:rush_the_point/can_break", view=(14039.28, 140.79, 13962.74, -1754.77, 55.30))
	##	15000	(undefined)	: skywars_1		(not done yet)
	##	16000	(undefined)	: skywars_2		(not done yet)
	clone_survival(100, (17000, 100, 17000), (17080, 145, 17080), ("friends_cube_lobby", "FriendsCube Lobby", "Jugou2"), view=(17032.36, 117.35, 17065.43, -1594.80, 2.80))
	##	18000	(undefined)	: empty
	clone_survival(39, (19437, 39, 19376), (20781, 256, 20668), ("flamingosaurus_mariokart", "Main Island", "Flamingosaurus & co"), view=(19992.17, 194.79, 19796.70, -2555.03, 21.22))
	clone_survival(85, (20378, 85, 19516), (20525, 138, 19658), ("mario_circuit", "Mario Circuit", "Flamingosaurus & co"), view=(20505.74, 122.80, 19539.18, -2469.06, 36.96), racing_pos=((20403.5, 100.69, 19590.5), 180, 20))
	clone_survival(85, (20153, 85, 19522), (20230, 119, 19650), ("fast_circuit", "Fast Circuit", "Flamingosaurus & co"), view=(20172.83, 101.81, 19537.89, -2544.88, 21.38), racing_pos=((20209.0, 90.69, 19587.5), 0, 20))
	clone_survival(85, (20126, 85, 19727), (20294, 135, 19911), ("plains_routine", "Plains Routine", "Flamingosaurus & co"), view=(20144.08, 119.49, 19879.80, -2649.80, 22.04), racing_pos=((20224.0, 103.69, 19801.5), 90, 16))
	clone_survival(85, (19817, 85, 19470), (20062, 204, 19731), ("city_race", "City Race", "Flamingosaurus & co"), view=(19848.31, 172.04, 19570.10, -2580.00, 38.94), racing_pos=((19935.5, 100.69, 19655.5), -90, 32))
	clone_survival(85, (19821, 85, 19979), (20068, 132, 20228), ("sakura_land", "Sakura Land", "Flamingosaurus & co"), view=(19945.70, 106.79, 20073.99, -2522.44, -9.98), racing_pos=((19917.5, 114.69, 20039.5), -90, 20))
	clone_survival(85, (20332, 85, 19983), (20564, 150, 20210), ("hills_land", "Hills Land", "Flamingosaurus & co"), view=(20405.77, 101.22, 20072.91, -2559.67, 3.85), racing_pos=((20446.5, 100.69, 20076.5), 90, 20))
	clone_survival(70, (20606, 70, 20227), (20781, 180, 20426), ("airship_fortress", "Airship Fortress", "Flamingosaurus & co"), view=(20648.54, 136.59, 20368.22, -2645.74, 21.17), racing_pos=((20728.5, 121.69, 20323.0), 90, 20))
	clone_survival(70, (19650, 70, 20485), (20034, 212, 20603), ("dk_mountain", "DK Mountain", "Flamingosaurus & co"), view=(19873.23, 115.60, 20526.64, -2442.25, -9.25), racing_pos=((19944.5, 107.69, 20553.5), -90, 20))
	clone_survival(70, (19469, 70, 20289), (19629, 172, 20445), ("clock_circuit", "Clock Circuit", "Flamingosaurus & co"), view=(19522.77, 145.60, 20303.09, -2544.45, 21.02), racing_pos=((19565.0, 143.69, 20393.0), 90, 16))
	clone_survival(100, (21000, 100, 21000), (21270, 195, 21191), ("baby_park", "Baby Park", "Flamingosaurus & co"), view=(21152.98, 132.38, 21103.62, -2069.60, 1.11), racing_pos=((21143.5, 131.69, 21106.5), 90, 64))
	clone_survival(100, (22000, 100, 22000), (22226, 181, 22245), ("bowser_castle", "Bowser Castle", "Flamingosaurus & co"), view=(22073.60, 132.45, 22130.03, -2350.37, -8.65), racing_pos=((22065.5, 130.69, 21680.5), 180, 60))
	clone_survival(100, (23000, 100, 23000), (23207, 186, 23205), ("snow_travel", "Snow Travel", "Flamingosaurus & co"), view=(23123.20, 133.41, 23126.37, -2440.00, -0.06), racing_pos=((23063.0, 136.69, 23041.5), -90, 20))
	clone_survival(100, (24000, 100, 24000), (24122, 166, 24137), ("rainbow_road", "Rainbow Road", "Flopy"), view=(24091.81, 153.07, 24097.76, -2030.96, 33.23), racing_pos=((24040.5, 139.69, 24076.5), 90, 36))
	clone_survival(100, (25000, 100, 25000), (25493, 217, 25348), ("trackmania_stadium_1", "Trackmania Stadium 1", "Stoupy"), view=(25349.85, 158.73, 25099.32, -2839.10, 37.81), racing_pos=((25348.5, 110.69, 25171.5), 180, 32))
	clone_survival(100, (26000, 100, 26000), (26138, 265, 26084), ("cathedrale_liege", "Cathédrale Saint-Lambert de Liège", "Simonay"), view=(26033.99, 122.30, 26052.67, -2958.50, -4.14))
	clone_survival(100, (27000, 100, 27000), (27036, 162, 27062), ("layers_2_teams", "Layers 2 Teams", "Stoupy"), view=(26990.28, 107.53, 27079.30, -2665.00, -23.18))
	clone_survival(87, (27969, 63, 27969), (28031, 82, 28031), ("spleef_1", "Spleef 1", "Stoupy, ?"), view=(28025.16, 107.52, 28028.77, -2737.62, 25.30))
	clone_survival(100, (29000, 100, 29000), (29083, 206, 29049), ("de_a_coudre_1", "Dé à coudre 1", "Stoupy, Jugou2"), view=(29043.46 ,174.26 ,29035.74, -3095.00, 75.14))
	##	30000	(undefined)	: empty
	clone_survival(100, (31000, 100, 31000), (31075, 229, 31090), ("mlg_a_coudre_1", "MLG à coudre 1", "Stoupy, Jugou2"), view=(31089.27, 217.57, 31063.11, -252.52, 35.42))
	clone_survival(100, (32000, 100, 32000), (32100, 144, 32100), ("zonweeb_main", "Zonweeb Main", "Stoupy"), view=(32056.17, 121.68, 32031.92, -343.26, 11.85))
	##	33000	(undefined)	: empty
	clone_survival(100, (34000, 100, 34000), (34187, 190, 34127), ("jayl_dark_forest", "Jayl Dark Forest", "JxyL, Stoupy"), view=(34158.12, 160.42, 34106.90, -1324.20, 14.32))
	##	35000	(undefined)	: arti_mansion			(not done yet)
	clone_survival(100, (35827, -64, 35668), (36340, 99, 36180), ("operation_pigclaw", "Operation Pigclaw", "TheFRcRaZy, Jugou2"), view=(36068.47, -143.77, 36081.37, 172.34, 2.45))
	clone_survival(100, (37000, 100, 37000), (37510, 218, 37367), ("trackmania_stadium_2", "Trackmania Stadium 2", "Stoupy"), view=(37392.24, 175.88, 37147.97, -1365.07, 35.09), racing_pos=((37356.5, 110.69, 37180.5), 180, 28))
	##	38000	(undefined)	: empty
	clone_survival(100, (39000, 100, 39000), (39143, 170, 39221), ("dark_forest_hills", "Dark Forest Hills", "Stoupy"), view=(39051.36, 135.94, 39191.41, -1241.32, 15.82))
	clone_survival(100, (40000, 100, 40000), (40200, 264, 40200), ("paralya_lobby_noel", "Paralya Lobby Noel", "Jugou2"), view=(40153.12, 204.86, 40096.92, -283.29, 9.64))
	##	41000	(undefined)	: empty

	clone_survival(100, (42000, 0, 42000), (42070, 25, 42056), ("ghost_town", "Ghost Town", "Unknown"), view=(42037, 113, 42028))

	clone_survival(100, (42959, 91, 42959), (43041, 115, 43041), ("abandoned_city_spawn_circle", "Abandoned City Spawn Circle", "Unknown"), view=(43000, 116, 43000))

	clone_survival(100, (43999, -1, 43999), (45001, 259, 46001), ("abandoned_city", "Abandoned City", "Unknown"), view=(44500, 260, 45000))

	clone_survival(128, (45788, -64, 45849), (46136, 126, 46187), ("taroatlas_soviet_prison", "Soviet Prison", "TaroAtlas"), view=(45998, 209, 45984))

	clone_survival(100, (46971, 0, 46971), (47036, 42, 47042), ("desert_grand_library", "Desert Grand Library", "Unknown"), view=(47003, 108, 47006))

	clone_survival(100, (47930, 0, 47930), (48070, 84, 48070), ("new_grounds", "New Grounds", "Unknown"), view=(48000, 113, 48000))

	clone_survival(100, (48900, 0, 48900), (49100, 47, 49100), ("cookie_wars", "Cookie Wars", "Stoupy"), view=(49000, 123, 49000))

	clone_survival(100, (49906, 0, 49918), (50145, 60, 50103), ("snow_hills", "Snow Hills", "Unknown"), view=(50025, 120, 50010))

	clone_survival(100, (50963, 80, 50947), (51062, 160, 51070), ("boat_race_2", "Boat Race 2", "Marcus (Survisland)"), view=(51012, 161, 51008), racing_pos=((51032.5, 139, 51038.5), 180, 32))

	clone_survival(100, (51899, -64, 51853), (52076, 92, 52071), ("vilarles_castillo", "Castillo", "Vilarles"), view=(52000, 135, 52000))

	clone_survival(100, (52915, 0, 52876), (53040, 57, 53094), ("zonweeb_highschool", "A Japanese High School", "Minami310, ComputerGraphics, Stoupy"), view=(53000, 112, 53000))

	clone_survival(100, (53977, 0, 53994), (54008, 40, 54100), ("enigma_lab_1", "Enigma Lab 1", "Stoupy (Survisland)"), view=(53979.06, 37.20, 53993.02, -382.69, 43.02))

	clone_survival(100, (54979, 0, 54996), (55020, 39, 55037), ("sumo_lawef", "Sumo Arena", "Lawef (Survisland)"), view=(54999, 112, 55016))

	##	56000	(undefined)	: CSGO Map, faut trouver le nom	(not done yet)

	clone_survival(100, (57000, 0, 57000), (57074, 55, 57113), ("find_the_shulker", "Find the Shulker", "? (Survisland)"), view=(57037, 120, 57056))

	clone_survival(100, (58000, 0, 58000), (58160, 91, 58188), ("scartmania", "Scartmania", "Stoupy (Survisland)"), view=(58008, 111, 58020))

	clone_survival(100, (59000, 0, 59000), (59160, 47, 59124), ("colliseum", "Colliseum", "? (Survisland)"), view=(59080, 111, 59062))

	clone_survival(100, (60000, 0, 60000), (60184, 73, 60066), ("scary_labyrinth", "Scary Labyrinth", "? (Survisland)"), view=(60091, 110, 60037))

	clone_survival(100, (61000, 0, 61000), (61084, 88, 61049), ("snk_tower", "SNK Tower", "Stoupy (Survisland)"), view=(61071.93, 9.93, 61027.64, -272.83, -61.81))

	clone_survival(100, (62000, 0, 62000), (62088, 59, 62093), ("blindtest", "Blindtest", "Islijelis (Survisland)"), view=(62044, 111, 62046))

	#	63000	(survival)	: VIDE (pas de map)

	# Drive the pig (63000)

	clone_survival(100, (64000, 0, 64000), (64101, 53, 64126), ("kart_racer_relai", "Kart Racer Relay", "?, Stoupy (Survisland)"), view=(64037, 112, 64052))

	clone_survival(100, (65000, 0, 65000), (65099, 94, 65103), ("orange_rings", "Orange Rings", "Stoupy (Survisland)"), view=(65006, 109, 65003))

	clone_survival(100, (66000, 0, 66000), (66085, 56, 66080), ("find_the_wool", "Find the Wool", "? (Survisland)"), view=(66042, 115, 66040))

	clone_survival(100, (67000, 0, 67000), (67065, 33, 67073), ("snk_lab_s11", "SNK Lab S11", "Stoupy (Survisland)"), view=(67037, 128, 67037))

	clone_survival(100, (68000, 0, 68000), (68024, 20, 68031), ("plucky_penguins", "Plucky Penguins", "Stoupy (Survisland)"), view=(68012, 116, 68015))

	clone_survival(100, (69000, -64, 69000), (69148, 60, 69106), ("warden_escape_statue", "Warden Escape Statue", "?, Oraclette (Survisland)"), view=(69055, 136, 69050))

	clone_survival(100, (70000, 0, 70000), (70303, 64, 70287), ("giant_zoo", "Giant Zoo", "?, M4TOUW (Survisland)"), view=(70026, 123, 70126))

	clone_survival(100, (71000, 0, 71000), (71170, 70, 71160), ("hider_mansion", "Hider Mansion", "?, Oraclette, math730 (Survisland)"), view=(71073, 110, 71080))

	clone_survival(100, (72000, 0, 72000), (72207, 51, 72220), ("nuketown", "Nuketown", "Qiuye, Cube Horizon"), view=(72109, 111, 72109))

	clone_survival(100, (73000, 0, 73000), (73076, 29, 73083), ("enigma_lab_2", "Enigma Lab 2", "Stoupy (Survisland)"), view=(72109, 111, 72109))

	clone_survival(100, (74000, 0, 74000), (74036, 61, 74062), ("layers_4_teams", "Layers 4 Teams", "Stoupy"), view=(72109, 111, 72109))

	clone_survival(100, (75000, 0, 75000), (75089, 35, 75076), ("snk_lab_s9", "SNK Lab S9", "Stoupy (Survisland)"), view=(72109, 111, 72109))

	##	76000	(undefined)	: Fish the pig			(not done yet)

	clone_survival(100, (77000, -64, 77000), (77097, 81, 77094), ("sky_island_tower", "Sky Island Tower", "Unknown"), view=(77052, 183, 77038))

	clone_survival(100, (78000, 0, 78000), (78171, 81, 78112), ("sprucy_village", "Sprucy Village", "Unknown"), view=(78085, 119, 78055))

	clone_survival(100, (79000, 0, 79000), (79126, 99, 79102), ("survival_boat", "Survival Boat", "Unknown"), view=(72109, 111, 72109))

	clone_survival(150, (80000, -64, 80000), (80142, 0, 80142), ("sky_tower", "Sky Tower", "Unknown"), view=(80071, 173, 80071))

	fill_survival((80824, 0, 80822), (81219, 235, 81182), ("purple_sky_island", "Purple Sky Island", "Unknown"), "air", "#switch:purple_sky_island", view=(81000, 101, 81000))

	##	82000	(undefined)	: Maps Infinitri customs à fusionner	(not done yet) [Infinitri Pack]

	clone_survival(100, (83000, 0, 83000), (83063, 85, 83063), ("lava_castle", "Lava Castle", "Unknown"), view=(83032, 132, 83039))

	clone_survival(100, (84000, 0, 84000), (84083, 35, 84069), ("spruce_dojo", "Spruce Dojo", "Unknown"), view=(84041, 109, 84035))

	clone_survival(100, (85000, 0, 85000), (85150, 72, 85142), ("highland_mansion", "Highland Mansion", "Unknown"), view=(72109, 111, 72109))

	clone_survival(100, (86000, 0, 86000), (86121, 94, 86135), ("sakura_house", "Sakura House", "Unknown"), view=(86072, 117, 86100))

	clone_survival(100, (87000, 0, 87000), (87045, 40, 87094), ("red_temple", "Red Temple", "? (Survisland)"), view=(87023, 110, 87058))

	clone_survival(100, (88000, 0, 88000), (88068, 98, 88068), ("nature_house", "Nature House", "Unknown"), view=(88039, 110, 88033))

	clone_survival(100, (89000, 0, 89000), (89422, 94, 89532), ("flower_village", "Flower Village", "Unknown"), view=(89311, 116, 89291))

	clone_survival(100, (90000, 0, 90000), (90224, 81, 90286), ("japanese_village", "Japanese Village", "Unknown"), view=(90106, 116, 90167))

	clone_survival(100, (91000, 0, 91000), (91102, 87, 91102), ("whity_lab", "Whity Lab", "JustNoob, Stoupy (y'a encore les panneaux)"), view=(91051, 112, 91051))

	clone_survival(100, (92000, 0, 92000), (92200, 70, 92229), ("snowy_village", "Snowy Village", "Unknown"), view=(92108, 123, 92090))

	clone_survival(100, (93000, 0, 93000), (93122, 64, 93122), ("werewolf_village", "Werewolf Village", "Unknown"), view=(93061, 115, 93061))

	clone_survival(100, (94000, 0, 94000), (94076, 99, 94076), ("wyvern_towers", "Wyvern Towers", "Unknown"), view=(94036, 157, 94037))

	clone_survival(100, (95000, -63, 95000), (95219, 41, 95203), ("lg_medieval", "LG Medieval", "Unknown"), view=(95126, 120, 95100))

	clone_survival(100, (96000, -63, 96000), (96246, 50, 96239), ("lg_village", "LG Village", "Unknown"), view=(96128, 113, 96118))

	clone_survival(100, (97000, 0, 97000), (97129, 43, 97129), ("lightium_spawn", "Lightium Spawn", "Ikinox, Stoupy, ?"), view=(97065, 111, 97065))

	clone_survival(100, (98000, 0, 98000), (98090, 93, 98090), ("paralya_uhc_lobbies", "Paralya UHC Lobbies", "Unknown"), view=(98037, 154, 98046))

	clone_survival(100, (99000, -63, 99000), (99200, 98, 99200), ("paralya_lobby", "Paralya Lobby", "MLyshu, Jugou2, Stoupy"), view=(99100, 181, 99100))

	clone_survival(100, (100028, -63, 100000), (100135, 25, 100103), ("sheepwars_dirigeables", "Sheepwars Dirigeables", "Unknown"), view=(100156, 163, 100122))

	clone_survival(100, (101000, 0, 101000), (101120, 90, 101120), ("stardust_spawn", "Stardust Spawn", "Stoupy, Jugou2"), view=(101060, 156, 101060))

	##	102000	(undefined)	: replicate_the_build

	clone_survival(100, (103000, -64, 103000), (103132, 49, 103165), ("stardust_boss_zone", "Stardust Boss Zone", "Jugou2"), view=(103057, 154, 103095))

	clone_survival(100, (104000, -63, 104000), (104132, 65, 104165), ("stardust_boss_zone_nether", "Stardust Boss Zone Nether", "Jugou2"), view=(104057, 159, 104095))

	clone_survival(100, (105000, -63, 105000), (105291, 79, 105314), ("stardust_pvp_zone", "Stardust PVP Zone", "Cala"), view=(105164, 158, 105165))

	clone_survival(100, (106000, 0, 106000), (106132, 57, 106178), ("stardust_prison", "Stardust Prison", "Stoupy"), view=(106067, 115 ,106064))

	clone_survival(100, (107000, 0, 107000), (107113, 50, 107085), ("stardust_vip_zone", "Stardust VIP Zone", "Stoupy"), view=(107056, 116, 107017))

	clone_survival(100, (108000, -63, 108000), (108178, 40, 108129), ("end_factory", "End Factory", "Flamingosaurus & co"), view=(108146, 133, 108076))

	clone_survival(100, (109000, 0, 109000), (109059, 68, 109046), ("tnt_run_futuristic", "TNT Run Futuristic", "Stoupy, Jugou2"), view=(109029, 148, 109022))

	clone_survival(100, (109999, 89, 109999), (110080, 117, 110081), ("block_party", "Block Party", "You"), view=(110039, 118, 110040))

	clone_survival(100, (111000, 0, 111000), (111207, 51, 111220), ("nuketown_no_barrier", "Nuketown No Barrier", "Qiuye, Cube Horizon"), view=(111109, 111, 111109))

	clone_survival(100, (112000, 0, 112000), (112043, 33, 112042), ("snowball_painter", "Snowball Painter", "Stoupy, ?"), view=(112022, 110, 112006))

	clone_survival(100, (113994, 90, 113992), (114064, 139, 114050), ("gay_shooter", "Guy Shooter", "scartvol (Survisland)"), view=(114029, 140, 114021))

	clone_survival(100, (115000, 0, 115000), (115101, 33, 115101), ("the_four_elements", "The Four Elements", "Stoupy, ?"), view=(115051, 110, 115052))

	##	116000	(undefined)	: EMPTY

	clone_survival(100, (117000, 0, 117000), (117119, 31, 117130), ("winnie_city", "Winnie City", "M4TOUW"), view=(117053, 110, 117052))

	clone_survival(100, (118000, 0, 118000), (118089, 42, 118066), ("remelta_cluedo", "Cluedo", "Remelta"), view=(118032, 108, 118030))

	clone_survival(100, (119000, 0, 119000), (119047, 34, 119047), ("arti_box", "Arti Box", "Arti"), view=(119024, 109, 119023))

	clone_survival(100, (120000, 0, 120000), (120037, 16, 120020), ("pitch_creep_nether", "Pitch Creep Nether", "Stoupy, ?"), view=(120019, 115, 120010))

	clone_survival(100, (121000, 0, 121000), (121115, 77, 121087), ("bombardement", "Bombardement", "Stoupy"), view=(121057, 110, 121064))

	clone_survival(100, (122000, 0, 122000), (122111, 49, 122074), ("nether_storm", "Nether Storm", "Arti, TreekoZ"), view=(122034, 119, 122037))

	clone_survival(100, (122980, 97, 122980), (123020, 154, 123020), ("shoot_da_sheep", "Shoot Da Sheep", "Stoupy"), view=(123000, 155, 123000))

	clone_survival(100, (124000, 84, 124000), (124166, 136, 124140), ("minigolf", "Minigolf", "Remelta, Fhara"), view=(124083, 137, 124070))

	clone_survival(100, (125000, 0, 125000), (125122, 28, 125122), ("pitchout_halloween", "Pitchout Halloween", "Even, Stoupy"), view=(125061, 112, 125061))

	clone_survival(100, (126000, 0, 126000), (126108, 47, 126108), ("cigogne", "Cigogne", "JustNoob"), view=(126059, 108, 126061))

	clone_survival(100, (128000, 0, 128000), (128095, 76, 128113), ("ancienne_egypte_2013", "Ancienne Egypte 2013", "?, ?, ? (Rebuilt by Stoupy, Shazin, Thitanas)"), view=(128048, 121, 128105))

	clone_survival(100, (129000, 0, 129000), (129102, 52, 129102), ("old_japan_apocalypse", "Old Japan Apocalypse", "Stoupy, Even"), view=(129041, 108, 129043))

	clone_survival(100, (127000, 0, 127000), (127150, 62, 127134), ("lost_graveyard_remastered", "Lost Graveyard Remastered", "Stoupy, ?, ShoupZ"), view=(127030, 119, 127111))

	clone_survival(100, (130000, 0, 130000), (130192, 80, 130134), ("jn_nature_box", "Nature Box", "JustNoob"), view=(130098, 169, 130067))

	clone_survival(100, (131000, 0, 131000), (131222, 79, 131148), ("block_party_lobby", "Block Party Lobby", "HiveMC"), view=(131047, 116, 131074))

	clone_survival(100, (132000, 0, 132000), (132120, 43, 132120), ("jn_countries_castle", "Countries Castle", "JustNoob"), view=(132067, 119, 132060))

	clone_survival(100, (133000, 0, 133000), (133054, 53, 133130), ("jn_ice_castles", "Ice Castle", "JustNoob"), view=(133027, 106, 133069))

	clone_survival(100, (134000, 0, 134000), (134149, 62, 134123), ("jn_murder_mystery", "Murder Mystery", "JustNoob"), view=(134095, 119, 134080))

	clone_survival(100, (135000, 0, 135000), (135100, 38, 135100), ("jn_sakura_pvpbox", "Sakura PVP Box", "JustNoob"), view=(135067, 111, 135037))

	clone_survival(100, (136000, 0, 136000), (136052, 31, 136053), ("charly_murder_2018", "MurderUHC House (2018)", "Charly"), view=(136024, 115 ,136029))

	clone_survival(100, (137000, 0, 137000), (137078, 22, 137120), ("jn_one_in_the_chamber_1", "One in the Chamber 1", "JustNoob"), view=(137045, 105, 137047))

	clone_survival(100, (138000, 0, 138000), (138140, 57, 138100), ("jn_one_in_the_chamber_2", "One in the Chamber 2", "JustNoob"), view=(138104, 104, 138042))

	clone_survival(100, (139000, 0, 139000), (139091, 50, 139103), ("overgrown_forest", "Overgrown Forest", "Unknown"), view=(139056, 113, 139037))

	clone_survival(100, (140000, 0, 140000), (140056, 38, 140070), ("pretty_garden", "Pretty Garden", "Unknown"), view=(140034, 112, 140035))

	clone_survival(100, (141000, 0, 141000), (141198, 89, 141139), ("jn_biomes_relief", "Biomes Relief", "JustNoob"), view=(141137, 167, 141087))

	clone_survival(100, (142000, 0, 142000), (142106, 82, 142106), ("luxium_spectres_remake", "Luxium Spectres Remake", "Luxio"), view=(142034, 141, 142026))

	clone_survival(100, (143000, 0, 143000), (143083, 83, 143114), ("sheepwars_bonbons", "Sheepwars Bonbons", "Team Sylnia"), view=(143044, 151, 143056))

	clone_survival(100, (144000, 0, 144000), (144079, 69, 144075), ("sheepwars_plateforme", "Sheepwars Plateforme", "Team Sylnia"), view=(144044, 142, 144040))

	clone_survival(100, (145000, 0, 145000), (145092, 93, 145122), ("sheepwars_ilots", "Sheepwars Ilots", "Team Sylnia"), view=(145046, 156, 145059))

	clone_survival(100, (146000, 0, 146000), (146341, 80, 146227), ("ctf_plains_castles", "Plains Castle", "Empire War Network"), view=(146170, 118, 146114))

	clone_survival(100, (147000, -64, 147000), (147363, 98, 147158), ("ctf_mountains_castles", "Vale Castle", "Empire War Network, Stoupy"), view=(147181, 180, 147078))

	clone_survival(100, (148000, 0, 148000), (148202, 99, 148105), ("ctf_flowers", "Fairy Garden", "JeSuisMister, Zougly, Maxmos"), view=(148047, 118, 14804))

	clone_survival(100, (149000, -64, 149000), (149202, 45, 149350), ("ctf_nether", "Fiery Wastes", "JeSuisMister, Zougly, Maxmos"), view=(149101, 180, 149175))

	clone_survival(100, (150000, 0, 150000), (150101, 64, 150216), ("ctf_forest_castles", "Forest Castle", "Stolen_capes, Ace_Unhacked"), view=(150050, 115, 150103))

	clone_survival(100, (151000, 0, 151000), (151056, 36, 151055), ("luxio_fish_fight", "Air Fish Fight", "Luxio"), view=(151026, 127, 151026))

	clone_survival(100, (152000, 0, 152000), (152020, 73, 152020), ("arti_tnt_run_tower", "TNT Run Tower", "Arti"), view=(152010, 169, 152011))

	#	153000	(adventure)	: memory_mine 152998 99 152998 153027 115 153034

	clone_survival(100, (154000, 0, 154000), (154107, 69, 154106), ("sheepwars_colored_sheeps", "Colored Sheeps", "AirDox"), view=(154035, 148, 154064))

	clone_survival(100, (155000, 0, 155000), (155042, 75, 155042), ("elza_dual_biomes", "Dual Biomes", "Elzariia"), view=(155021, 154, 155021))

	clone_survival(75, (155924, -52, 155924), (156076, 68, 156075), ("airdox_fish_fight", "Dinosaur Volcano", "AirDox"), view=(156009, 152, 155990))

	clone_survival(100, (157000, 0, 157000), (157111, 51, 157117), ("arti_ancient_city", "Big Ancient City", "Arti"), view=(157046, 121, 157072))

	clone_survival(100, (158000, 0, 158000), (158077, 67, 158070), ("yeti_in_panic", "Yeti in Panic", "TreekoZ, Arti, Chara"), view=(158043, 112, 158025))

	clone_survival(100, (159000, 0, 159000), (159075, 59, 159069), ("cluedo_casino", "Cluedo Casino", "Remelta, Fhara"), view=(159056, 117, 159047))

	clone_survival(100, (160000, 0, 160000), (160080, 62, 160080), ("octogone_nether_ice", "Octogone Nether Ice", "Stoupy"), view=(160040, 136, 160040))

	clone_survival(100, (161000, 0, 161000), (161100, 90, 161100), ("pillars_of_fortune", "Icy ground circle", "Stoupy"), view=(161050, 164, 161050))

	clone_survival(100, (162000, 0, 162000), (162102, 52, 162102), ("even_old_japan", "Old Japan", "Even"), view=(162038, 109, 162043))

	clone_survival(100, (163000, 0, 163000), (163075, 50, 163075), ("fireblast_1", "Fireblast 1", "Stoupy"), view=(163037, 127, 163037))

	clone_survival(100, (164000, 0, 164000), (164075, 50, 164075), ("fireblast_2", "Fireblast 2", "Stoupy"), view=(164037, 127, 164037))

	clone_survival(100, (165000, 0, 165000), (165075, 50, 165075), ("fireblast_3", "Fireblast 3", "Stoupy"), view=(165037, 127, 165037))

