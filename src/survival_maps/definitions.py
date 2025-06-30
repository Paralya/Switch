
# ruff: noqa: E501
# Imports
from .utils import clone_survival, fill_survival


# Main function calling all the map generation functions
def generate_folders_for_survival_maps() -> None:
	""" Generate the folders for the survival maps:

	- generate_clone_survival_folder: Generate a clone survival folder
	- generate_fill_survival_folder: Generate a fill survival folder

	Args:
		config (dict): The configuration of the project
	"""
	clone_survival(100, (500, 100, 500), (552, 143, 552), ("laser_game", "LaserGame51 (2010 IRL layout)", "Stoupy, Ikinox"), view=(517.62, 111.36, 518.34, -31.98, 9.81))
	clone_survival(100, (1000, 100, 1000), (1100, 144, 1100), ("pitchout_1", "Wet Wood Dome", "Stoupy, ?"), view=(1081.19, 117.69, 1065.08, 114.72, 15.66))
	clone_survival(100, (1500, 100, 1500), (1684, 189, 1655), ("traitor_original", "Traitor Original", "Stoupy, Luxio, Jugou2, etc. (Paralya)"), view=(1566.00, 122.20, 1533.79, -56.61, 8.90))
	clone_survival(100, (2000, 100, 2000), (2108, 193, 2126), ("area_51", "Area 51", "Jugou2, Stoupy, TheFRcRaZy"), view=(2046.90, 105.29, 2056.55, 145.40, -2.02))
	clone_survival(100, (2500, 100, 2500), (2586, 185, 2595), ("spectre_original", "Spectre Original", "DIocelot, Stoupy"), view=(2526.27, 150.48, 2573.21, -143.57, 25.80))
	fill_survival((2750, -64, 2750), (3250, 320, 3250), ("glassrunner", "Glassrunner", "AirDox"), "air", "#switch:glassrunner/glass", view=(3003.25, 138.64, 2987.65, 12.58, 56.33))
	clone_survival(100, (3500, 100, 3500), (3540, 140, 3540), ("pitch_creep_1", "Pitch Creep Wood", "Stoupy"), view=(3523.79, 120.80, 3513.55, 22.25, -8.74))
	clone_survival(100, (4000, 100, 4000), (4122, 151, 4122), ("mushroom_plains", "Mushroom Plains", "LTHCTheMaster"), view=(4043.11, 134.50, 4116.71, 195.90, 27.19))
	clone_survival(100, (5000, 100, 5000), (5342, 247, 5257), ("boat_race_1", "FriendsCube Boat Race", "Stoupy, TheFRcRaZy, Jugou2"), view=(5244.61, 205.14, 5055.73, 46.89, 33.85), racing_pos=((5199.5, 160.69, 5142.5), 90, 12))
	clone_survival(100, (6000, 100, 6000), (6062, 130, 6159), ("elytra_box", "Elytra Box", "scartvol (Survisland)"), view=(5997.26, 158.50, 6003.76, 336.92, 44.65))
	clone_survival(100, (7000, 100, 7000), (7060, 149, 7060), ("enchanting_island", "Enchanting Island", "Stoupy, ?"), view=(7061.03, 139.35, 7015.43, 64.78, 27.65))
	clone_survival(100, (8000, 100, 8000), (8048, 131, 8048), ("friends_oneforall", "FriendsCube OneForAll", "AirDox, TheFRcRaZy"), view=(8004.36, 119.48, 8009.13, 306.36, 24.97))
	clone_survival(100, (9000, 100, 9000), (9035, 192, 9032), ("friends_cube_jump", "FriendsCube Jump", "Stoupy"), view=(9023.97, 101.24, 9004.81, 43.17, -61.65))
	clone_survival(100, (10000, 100, 10000), (10132, 119, 10132), ("warden_forest", "Warden Forest", "Stoupy"), view=(10065.74, 106.68, 10021.88, 4.01, -10.98))
	clone_survival(100, (11000, 100, 11000), (11065, 142, 11065), ("friends_pvpbox_ice", "FriendsCube PvPbox Ice", "Jugou2"), view=(11012.23, 123.22, 11043.81, 247.65, 10.96))
	clone_survival(100, (12000, 100, 12000), (12090, 167, 12090), ("friends_pvpbox_hills", "FriendsCube PvPbox Hills", "Jugou2"), view=(12059.29, 121.67, 12010.18, 22.08, -1.65))
	clone_survival(100, (13000, 100, 13000), (13091, 133, 13090), ("friends_pvpbox_end", "FriendsCube PvPbox End", "Jugou2"), view=(13042.52, 113.62, 13065.88, 204.05, 3.63))
	fill_survival((13901, 0, 13901), (14099, 255, 14099), ("rush_the_point_1", "Rush the Point 1", "Jugou2"), "air", "#switch:rush_the_point/can_break", view=(14039.28, 140.79, 13962.74, -1754.77, 55.30))
	##	15000	(undefined)	: skywars_1		(not done yet)
	##	16000	(undefined)	: skywars_2		(not done yet)
	clone_survival(100, (17000, 100, 17000), (17080, 145, 17080), ("friends_cube_lobby", "FriendsCube Lobby", "Jugou2"), view=(17032.36, 117.35, 17065.43, 205.20, 2.80))
	##	18000	(undefined)	: empty
	clone_survival(39, (19437, 39, 19376), (20781, 256, 20668), ("flamingosaurus_mariokart", "Main Island", "Flamingosaurus & co"), view=(19992.17, 194.79, 19796.70, 324.97, 21.22))
	clone_survival(85, (20378, 85, 19516), (20525, 138, 19658), ("mario_circuit", "Mario Circuit", "Flamingosaurus & co"), view=(20505.74, 122.80, 19539.18, 50.94, 36.96), racing_pos=((20403.5, 100.69, 19590.5), 180, 20))
	clone_survival(85, (20153, 85, 19522), (20230, 119, 19650), ("fast_circuit", "Fast Circuit", "Flamingosaurus & co"), view=(20172.83, 101.81, 19537.89, 335.12, 21.38), racing_pos=((20209.0, 90.69, 19587.5), 0, 20))
	clone_survival(85, (20126, 85, 19727), (20294, 135, 19911), ("plains_routine", "Plains Routine", "Flamingosaurus & co"), view=(20144.08, 119.49, 19879.80, 230.20, 22.04), racing_pos=((20224.0, 103.69, 19801.5), 90, 16))
	clone_survival(85, (19817, 85, 19470), (20062, 204, 19731), ("city_race", "City Race", "Flamingosaurus & co"), view=(19848.31, 172.04, 19570.10, 300.00, 38.94), racing_pos=((19935.5, 100.69, 19655.5), -90, 32))
	clone_survival(85, (19821, 85, 19979), (20068, 132, 20228), ("sakura_land", "Sakura Land", "Flamingosaurus & co"), view=(19945.70, 106.79, 20073.99, 357.56, -9.98), racing_pos=((19917.5, 114.69, 20039.5), -90, 20))
	clone_survival(85, (20332, 85, 19983), (20564, 150, 20210), ("hills_land", "Hills Land", "Flamingosaurus & co"), view=(20405.77, 101.22, 20072.91, 320.33, 3.85), racing_pos=((20446.5, 100.69, 20076.5), 90, 20))
	clone_survival(70, (20606, 70, 20227), (20781, 180, 20426), ("airship_fortress", "Airship Fortress", "Flamingosaurus & co"), view=(20648.54, 136.59, 20368.22, 234.26, 21.17), racing_pos=((20728.5, 121.69, 20323.0), 90, 20))
	clone_survival(70, (19650, 70, 20485), (20034, 212, 20603), ("dk_mountain", "DK Mountain", "Flamingosaurus & co"), view=(19873.23, 115.60, 20526.64, 77.75, -9.25), racing_pos=((19944.5, 107.69, 20553.5), -90, 20))
	clone_survival(70, (19469, 70, 20289), (19629, 172, 20445), ("clock_circuit", "Clock Circuit", "Flamingosaurus & co"), view=(19522.77, 145.60, 20303.09, 335.55, 21.02), racing_pos=((19565.0, 143.69, 20393.0), 90, 16))
	clone_survival(100, (21000, 100, 21000), (21270, 195, 21191), ("baby_park", "Baby Park", "Flamingosaurus & co"), view=(21152.98, 132.38, 21103.62, 90.40, 1.11), racing_pos=((21143.5, 131.69, 21106.5), 90, 64))
	clone_survival(100, (22000, 100, 22000), (22226, 181, 22245), ("bowser_castle", "Bowser Castle", "Flamingosaurus & co"), view=(22073.60, 132.45, 22130.03, 169.63, -8.65), racing_pos=((22065.5, 130.69, 21680.5), 180, 60))
	clone_survival(100, (23000, 100, 23000), (23207, 186, 23205), ("snow_travel", "Snow Travel", "Flamingosaurus & co"), view=(23123.20, 133.41, 23126.37, 80.00, -0.06), racing_pos=((23063.0, 136.69, 23041.5), -90, 20))
	clone_survival(100, (24000, 100, 24000), (24122, 166, 24137), ("rainbow_road", "Rainbow Road", "Flopy"), view=(24091.81, 153.07, 24097.76, 129.04, 33.23), racing_pos=((24040.5, 139.69, 24076.5), 90, 36))
	clone_survival(100, (25000, 100, 25000), (25493, 217, 25348), ("trackmania_stadium_1", "Trackmania Stadium 1", "Stoupy"), view=(25349.85, 158.73, 25099.32, 40.90, 37.81), racing_pos=((25348.5, 110.69, 25171.5), 180, 32))
	clone_survival(100, (26000, 100, 26000), (26138, 265, 26084), ("cathedrale_liege", "Cathédrale Saint-Lambert de Liège", "Simonay"), view=(26033.99, 122.30, 26052.67, 281.50, -4.14))
	clone_survival(100, (27000, 100, 27000), (27036, 162, 27062), ("layers_2_teams", "Layers 2 Teams", "Stoupy"), view=(26990.28, 107.53, 27079.30, 215.00, -23.18))
	clone_survival(87, (27969, 63, 27969), (28031, 82, 28031), ("spleef_1", "Spleef 1", "Stoupy, ?"), view=(28025.16, 107.52, 28028.77, 142.38, 25.30))
	clone_survival(100, (29000, 100, 29000), (29083, 206, 29049), ("de_a_coudre_1", "Dé à coudre 1", "Stoupy, Jugou2"), view=(29043.46 ,174.26 ,29035.74, 145.00, 75.14))
	##	30000	(undefined)	: empty
	clone_survival(100, (31000, 100, 31000), (31075, 229, 31090), ("mlg_a_coudre_1", "MLG à coudre 1", "Stoupy, Jugou2"), view=(31089.27, 217.57, 31063.11, 107.48, 35.42))
	clone_survival(100, (32000, 100, 32000), (32100, 144, 32100), ("zonweeb_main", "Zonweeb Main", "Stoupy"), view=(32056.17, 121.68, 32031.92, 16.74, 11.85))
	##	33000	(undefined)	: empty
	clone_survival(100, (34000, 100, 34000), (34187, 190, 34127), ("jayl_dark_forest", "Jayl Dark Forest", "JxyL, Stoupy"), view=(34158.12, 160.42, 34106.90, 115.80, 14.32))
	##	35000	(undefined)	: arti_mansion			(not done yet)
	clone_survival(100, (35827, -64, 35668), (36340, 99, 36180), ("operation_pigclaw", "Operation Pigclaw", "TheFRcRaZy, Jugou2"), view=(36068.47, 143.77, 36081.37, 172.34, 2.45))
	clone_survival(100, (37000, 100, 37000), (37510, 218, 37367), ("trackmania_stadium_2", "Trackmania Stadium 2", "Stoupy"), view=(37392.24, 175.88, 37147.97, 74.93, 35.09), racing_pos=((37356.5, 110.69, 37180.5), 180, 28))
	##	38000	(undefined)	: empty
	clone_survival(100, (39000, 100, 39000), (39143, 170, 39221), ("dark_forest_hills", "Dark Forest Hills", "Stoupy"), view=(39051.36, 135.94, 39191.41, 198.68, 15.82))
	clone_survival(100, (40000, 100, 40000), (40200, 264, 40200), ("paralya_lobby_noel", "Paralya Lobby Noel", "Jugou2"), view=(40153.12, 204.86, 40096.92, 76.71, 9.64))
	##	41000	(undefined)	: empty
	clone_survival(100, (42000, 100, 42000), (42070, 125, 42056), ("ghost_town", "Ghost Town", "FanSarwet46"), view=(42012.45, 112.27, 42034.30, -120.51, 1.25))
	clone_survival(100, (43000, 100, 43000), (43082, 132, 43082), ("abandoned_city_spawn_circle", "Abandoned City Spawn Circle", "Viator"), view=(43069.79, 128.06, 43063.05, 124.76, 23.65))
	clone_survival(100, (43999, -1, 43999), (45001, 259, 46001), ("abandoned_city", "Abandoned City", "Viator"), view=(44634.21, 197.01, 44772.98, 153.77, 26.87))
	##	46000	(undefined)	: empty
	##	47000	(undefined)	: empty
	clone_survival(100, (48000, 100, 48000), (48093, 141, 48093), ("new_grounds", "New Grounds", "Unknown"), view=(48065.56, 118.22, 48062.48, 128.08, 19.39))
	clone_survival(100, (49000, 100, 49000), (49200, 147, 49200), ("cookie_wars", "Cookie Wars", "Stoupy, Arobaze"), view=(49148.12, 141.36, 49129.67, 118.87, 30.35))
	clone_survival(100, (50000, 100, 50000), (50239, 160, 50185), ("snow_hills", "Snow Hills", "Stoupy"), view=(50066.89, 151.85, 50095.16, 263.80, 28.89))
	clone_survival(100, (51000, 100, 51000), (51099, 180, 51123), ("boat_race_2", "Boat Race 2", "Marcus (Survisland)"), view=(51005.01, 168.14, 51040.46, -71.72, 42.03), racing_pos=((51069.5, 159, 51091.5), 180, 32))
	clone_survival(100, (52000, 100, 52000), (52177, 256, 52173), ("vilarles_castillo", "Castillo", "Vilarles"), view=(52053.77, 175.12, 52166.47, -158.81, 15.64))
	clone_survival(100, (53000, 100, 53000), (53125, 158, 53218), ("zonweeb_highschool", "A Japanese High School", "Minami310, ComputerGraphics, Stoupy"), view=(53115.10, 109.14, 53116.11, 72.04, -9.97))
	##	54000	(undefined)	: empty
	##	55000	(undefined)	: empty
	##	56000	(undefined)	: CSGO Map, faut trouver le nom	(not done yet)
	##	57000	(undefined)	: empty
	clone_survival(100, (58000, 100, 58000), (58160, 191, 58188), ("scartmania", "Scartmania", "Stoupy (Survisland)"), view=(58103.72, 244.52, 58043.93, 19.96, 78.09))
	##	59000	(undefined)	: empty
	##	60000	(undefined)	: empty
	##	61000	(undefined)	: empty
	##	62000	(undefined)	: empty
	##	63000	(undefined)	: empty
	##	64000	(undefined)	: empty
	##	65000	(undefined)	: empty
	##	66000	(undefined)	: empty
	##	67000	(undefined)	: empty
	##	68000	(undefined)	: empty
	clone_survival(100, (69000, 100, 69000), (69148, 223, 69106), ("warden_escape_statue", "Warden Escape Statue", "?, Oraclette, math730 (Survisland)"), view=(69017.77, 136.85, 69078.56, 239.72, -1.32))
	##	70000	(undefined)	: empty
	clone_survival(100, (71000, 100, 71000), (71170, 170, 71160), ("hider_mansion", "Hider Mansion", "?, Oraclette, math730 (Survisland)"), view=(71152.74, 114.70, 71047.07, 60.38, -5.03))
	clone_survival(100, (72000, 100, 72000), (72207, 151, 72220), ("nuketown", "Nuketown", "Qiuye, Cube Horizon"), view=(72087.17, 117.13, 72105.28, 243.59, 15.91))
	##	73000	(undefined)	: empty
	clone_survival(100, (74000, 100, 74000), (74036, 161, 74062), ("layers_4_teams", "Layers 4 Teams", "Stoupy"), view=(73990.28, 107.53, 74079.30, 215.00, -23.18))
	##	75000	(undefined)	: empty
	##	76000	(undefined)	: Fish the pig			(not done yet)
	clone_survival(100, (77000, 100, 77000), (77097, 244, 77094), ("sky_island_tower", "Sky Island Tower", "Unknown"), view=(77026.88, 171.22, 77099.86, -155.14, 14.42))
	##	78000	(undefined)	: empty
	clone_survival(100, (79000, 100, 79000), (79126, 199, 79102), ("survival_boat", "Survival Boat", "Unknown"), view=(79029.80, 115.97, 79042.34, -64.00, -11.00))
	##	80000	(undefined)	: empty
	##	81000	(undefined)	: empty
	##	82000	(undefined)	: Maps Infinitri customs à fusionner	(not done yet) [Infinitri Pack]
	##	83000	(undefined)	: empty
	##	84000	(undefined)	: Création de maps (Guy Shooter, et ???)
	##	85000	(undefined)	: empty
	##	86000	(undefined)	: empty
	##	87000	(undefined)	: empty
	clone_survival(100, (88000, 100, 88000), (88068, 137, 88068), ("nature_house", "Nature House", "Unknown"), view=(88024.65, 109.70, 88051.82, 211.71, 1.41))
	##	89000	(undefined)	: empty
	##	90000	(undefined)	: empty
	clone_survival(100, (91000, 100, 91000), (91102, 187, 91102), ("whity_lab", "Whity Lab", "Sagnosis, Mrfox4, MrSirozz, Judipie, banane1299, Pikore, Stoupy"), view=(91081.17, 133.05, 91003.43, 30.91, 31.53))
	##	92000	(undefined)	: empty
	##	93000	(undefined)	: empty
	clone_survival(100, (94000, 100, 94000), (94076, 199, 94076), ("floating_island", "Floating Island", "Tebayai, Lenitra"), view=(94050.09, 158.37, 94065.73, 153.25, 19.24))
	##	95000	(undefined)	: empty
	##	96000	(undefined)	: empty
	clone_survival(100, (97000, 100, 97000), (97129, 143, 97129), ("lightium_spawn", "Lightium Spawn", "Ikinox, Stoupy, ?"), view=(97073.14, 117.71, 97054.12, 28.31, 19.57))
	clone_survival(100, (98000, 100, 98000), (98090, 193, 98090), ("paralya_uhc_lobbies", "Paralya UHC Lobbies", "Unknown, Stoupy"), view=(98027.33, 153.62, 98060.28, 237.16, 11.62))
	clone_survival(100, (99000, 100, 99000), (99200, 261, 99200), ("paralya_lobby", "Paralya Lobby", "MLyshu, Jugou2, Stoupy"), view=(99142.87, 193.64, 99136.94, 128.04, 9.70))
	clone_survival(100, (100000, 100, 100000), (100107, 188, 100103), ("sheepwars_dirigeables", "Sheepwars Dirigeables", "Epicube, Unknown"), view=(100089.36, 159.74, 100056.56, 99.07, 15.33))
	clone_survival(100, (101000, 100, 101000), (101120, 190, 101120), ("stardust_spawn", "Stardust Spawn", "Stoupy, Jugou2"), view=(101040.87, 174.88, 101026.31, 327.10, 34.48))
	##	102000	(undefined)	: replicate_the_build
	clone_survival(100, (103000, 100, 103000), (103132, 213, 103165), ("stardust_boss_zone", "Stardust Boss Zone", "Jugou2"), view=(103098.69, 159.79, 103132.23, 136.51, 15.25))
	clone_survival(100, (104000, 100, 104000), (104132, 228, 104165), ("stardust_boss_zone_nether", "Stardust Boss Zone Nether", "Jugou2"), view=(104028.44, 158.24, 104130.78, 211.01, 1.11))
	clone_survival(100, (105000, 100, 105000), (105291, 242, 105314), ("stardust_pvp_zone", "Stardust PVP Zone", "Cala (Paralya)"), view=(105113.91, 176.66, 105201.80, 208.95, 28.43))
	clone_survival(100, (106000, 100, 106000), (106132, 157, 106178), ("stardust_prison", "Stardust Prison", "Stoupy, Jugou2"), view=(106093.02, 125.28, 106139.82, 152.83, 16.65))
	clone_survival(100, (107000, 100, 107000), (107113, 150, 107085), ("stardust_vip_zone", "Stardust VIP Zone", "Stoupy, Jugou2"), view=(107056.85, 118.73, 107016.80, 29.24, 14.46))
	##	108000	(undefined)	: empty
	clone_survival(100, (109000, 100, 109000), (109059, 168, 109046), ("tnt_run_futuristic", "TNT Run Futuristic", "Stoupy, Jugou2"), view=(108992.51, 136.29, 109061.09, 222.34, 9.07))
	clone_survival(100, (109993, -63, 109993), (110087, 117, 110087), ("block_party", "Block Party", "👉 You 👈"), view=(109951.05, 206.21, 110071.73, 249.32, 2.55))
	clone_survival(100, (111000, 100, 111000), (111207, 151, 111220), ("nuketown_no_barrier", "Nuketown No Barrier", "Qiuye, Cube Horizon"), view=(72087.17, 117.13, 72105.28, 243.59, 15.91))
	clone_survival(100, (112000, 100, 112000), (112043, 133, 112042), ("snowball_painter", "Snowball Painter", "Stoupy, ?"), view=(112036.42, 110.64, 112002.87, 29.00, 8.65))
	clone_survival(100, (114000, 100, 114000), (114070, 149, 114058), ("gay_shooter", "Guy Shooter", "scartvol (Survisland)"), view=(114060.54, 135.63, 114016.48, 47.54, 14.09))
	clone_survival(100, (115000, 100, 115000), (115101, 133, 115101), ("the_four_elements", "The Four Elements", "Stoupy, ?"), view=(115089.76, 125.47, 115008.43, 38.50, 32.30))
	##	116000	(undefined)	: empty
	##	117000	(undefined)	: empty
	clone_survival(100, (118000, 100, 118000), (118089, 142, 118066), ("remelta_cluedo", "Cluedo", "Remelta"), view=(118027.17, 107.72, 118026.11, -62.95, -1.90))
	clone_survival(100, (119000, 100, 119000), (119047, 134, 119047), ("arti_box", "Arti Box", "Arti"), view=(119015.55, 111.00, 119037.61, 215.49, 22.17))
	##	120000	(undefined)	: empty
	clone_survival(100, (121000, 100, 121000), (121115, 177, 121087), ("bombardement", "Bombardement", "Stoupy"), view=(121042.45, 110.42, 121079.05, 209.52, 3.87))
	clone_survival(100, (122000, 100, 122000), (122111, 149, 122074), ("nether_storm", "Nether Storm", "Arti, TreekoZ"), view=(122018.26, 126.30, 122025.17, 305.19, 13.85))
	clone_survival(100, (123000, 100, 123000), (123040, 157, 123040), ("shoot_da_sheep", "Shoot Da Sheep", "Stoupy"), view=(123012.43, 113.94, 123003.14, 336.00, 11.83))
	clone_survival(100, (124000, 84, 124000), (124166, 136, 124140), ("minigolf", "Minigolf", "Remelta, Fhara"), view=(124082.24, 203.51, 124068.68, 270.23, 90.00))
	clone_survival(100, (125000, 100, 125000), (125122, 128, 125122), ("pitchout_halloween", "Pitchout Halloween", "Even, Stoupy"), view=(125041.62, 119.09, 125102.16, 205.44, 15.99))
	clone_survival(100, (126000, 100, 126000), (126108, 147, 126108), ("cigogne", "Cigogne", "JustNoob"), view=(126027.31, 112.17, 126071.37, 233.45, 11.79))
	clone_survival(100, (128000, 100, 128000), (128095, 176, 128113), ("ancienne_egypte_2013", "Ancienne Egypte 2013", "Farrel, Snowa, Jowjow (Rebuilt by Stoupy, Shazin, Thitanas)"), view=(128022.53, 146.68, 128029.90, 322.78, 24.89))
	clone_survival(100, (129000, 100, 129000), (129102, 152, 129102), ("old_japan_apocalypse", "Old Japan Apocalypse", "Stoupy, Even"), view=(129066.12, 113.57, 129020.79, 34.07, 3.87))
	clone_survival(100, (127000, 100, 127000), (127150, 162, 127134), ("lost_graveyard_remastered", "Lost Graveyard Remastered", "Stoupy, Rizdeau, Lawtank, TreekoZ, ShoupZ"), view=(127007.08, 118.02, 127045.68, -65.84, 5.08))
	clone_survival(100, (130000, 100, 130000), (130192, 180, 130134), ("jn_nature_box", "Nature Box", "Cala (JustNoob)"), view=(130029.82, 124.07, 130024.58, 304.79, 5.60))
	##	131000	(undefined)	: empty
	clone_survival(100, (132000, 100, 132000), (132120, 143, 132120), ("jn_countries_castle", "Countries Castle", "JustNoob"), view=(132033.90, 123.77, 132105.73, 207.59, 19.45))
	##	133000	(undefined)	: empty
	clone_survival(100, (134000, 100, 134000), (134149, 162, 134123), ("jn_murder_mystery", "Murder Mystery", "JustNoob"), view=(134120.91, 127.91, 134089.47, 110.58, 21.76))
	clone_survival(100, (135000, 100, 135000), (135100, 138, 135100), ("jn_sakura_pvpbox", "Sakura PVP Box", "JustNoob"), view=(135078.64, 118.46, 135084.61, 143.55, 18.30))
	clone_survival(100, (136000, 100, 136000), (136052, 131, 136053), ("charly_murder_2018", "MurderUHC House (2018)", "Charly"), view=(136018.10, 116.20, 136022.19, -45.40, 10.71))
	clone_survival(100, (137000, 100, 137000), (137078, 122, 137120), ("jn_one_in_the_chamber_1", "Multi-biomes Boxes 1", "JustNoob"), view=(137069.62, 109.03, 137074.15, 154.38, 5.85))
	clone_survival(100, (138000, 100, 138000), (138140, 157, 138100), ("jn_one_in_the_chamber_2", "Multi-biomes Boxes 2", "JustNoob"), view=(138054.20, 110.02, 138012.82, -43.75, 3.63))
	##	139000	(undefined)	: empty
	##	140000	(undefined)	: empty
	clone_survival(100, (141000, 100, 141000), (141198, 189, 141139), ("jn_biomes_relief", "Biomes Relief", "Cala (JustNoob)"), view=(141159.88, 139.15, 141032.10, 57.56, 11.13))
	clone_survival(100, (142000, 100, 142000), (142106, 182, 142106), ("luxium_spectres_remake", "Luxium Spectres Remake", "Luxio"), view=(142097.51, 143.41, 142069.19, 105.36, 16.57))
	clone_survival(100, (143000, 100, 143000), (143083, 183, 143114), ("sheepwars_bonbons", "Sheepwars Bonbons", "Team Sylnia"), view=(143063.66, 151.66, 143088.15, 145.80, 29.34))
	clone_survival(100, (144000, 100, 144000), (144079, 169, 144075), ("sheepwars_plateforme", "Sheepwars Plateforme", "Team Sylnia"), view=(144019.64, 143.02, 144059.82, 224.84, 29.75))
	clone_survival(100, (145000, 100, 145000), (145092, 193, 145122), ("sheepwars_ilots", "Sheepwars Ilots", "Team Sylnia"), view=(145079.77, 153.74, 145078.30, 117.12, 29.01))
	clone_survival(100, (146000, 100, 146000), (146341, 180, 146227), ("ctf_plains_castles", "Plains Castle", "Empire War Network"), view=(146111.63, 135.34, 146170.62, 225.25, 14.09))
	clone_survival(100, (146999, 100, 147000), (147363, 262, 147158), ("ctf_mountains_castles", "Vale Castle", "Empire War Network, Stoupy"), view=(147222.14, 192.74, 147038.10, 61.13, 21.26))
	clone_survival(100, (148000, 100, 148000), (148202, 199, 148105), ("ctf_flowers", "Fairy Garden", "JeSuisMister, Zougly, Maxmos"), view=(148070.85, 139.94, 148026.55, 291.34, 14.09))
	clone_survival(100, (149000, 100, 149000), (149202, 209, 149350), ("ctf_nether", "Fiery Wastes", "JeSuisMister, Zougly, Maxmos"), view=(149056.38, 157.56, 149204.54, 221.45, 15.91))
	clone_survival(100, (150000, 100, 150000), (150101, 164, 150216), ("ctf_forest_castles", "Forest Castle", "Stolen_capes, Ace_Unhacked"), view=(150019.35, 133.90, 150071.48, 328.43, 21.35))
	clone_survival(100, (151000, 100, 151000), (151056, 136, 151055), ("luxio_fish_fight", "Fish Fight Island", "Luxio"), view=(151012.14, 126.63, 151019.28, 295.73, 16.32))
	clone_survival(100, (152000, 100, 152000), (152020, 173, 152020), ("arti_tnt_run_tower", "TNT Run Tower", "Arti"), view=(152032.51, 144.70, 152056.72, 153.46, 9.31))
	clone_survival(100, (153000, 100, 153000), (153029, 116, 153036), ("memory_mine", "Memory Mine", "Stoupy"), view=(153025.83, 104.76, 153033.63, 139.04, 17.55))
	clone_survival(100, (154000, 100, 154000), (154107, 169, 154106), ("sheepwars_colored_sheeps", "Colored Sheeps", "AirDox"), view=(154062.01, 148.53, 154018.31, 15.33, 13.04))
	clone_survival(100, (155000, 100, 155000), (155042, 175, 155042), ("elza_dual_biomes", "Dual Biomes", "Elzariia"), view=(155036.25, 114.40, 155032.59, 122.22, 16.40))
	clone_survival(100, (156000, 100, 156000), (156152, 199, 156151), ("airdox_fish_fight", "Dinosaur Volcano", "AirDox"), view=(156111.00, 119.97, 156086.73, 100.10, -33.23))
	clone_survival(100, (157000, 100, 157000), (157111, 151, 157117), ("arti_ancient_city", "Big Ancient City", "Arti"), view=(157078.87, 111.18, 157104.12, 149.97, 6.33))
	clone_survival(100, (158000, 100, 158000), (158077, 167, 158070), ("yeti_in_panic", "Yeti in Panic", "TreekoZ, Arti, Chara"), view=(158003.67, 119.48, 158053.31, 239.07, 6.47))
	clone_survival(100, (159000, 100, 159000), (159075, 159, 159069), ("cluedo_casino", "Cluedo Casino", "Remelta, Fhara"), view=(159037.45, 121.93, 159015.02, 38.99, 17.87))
	clone_survival(100, (160000, 100, 160000), (160080, 162, 160080), ("octogone_nether_ice", "Octogone Nether Ice", "Stoupy, TreekoZ"), view=(160031.22, 132.41, 160043.15, -104.97, 13.10))
	clone_survival(100, (161000, 100, 161000), (161100, 190, 161100), ("pillars_of_fortune", "Icy ground circle", "Stoupy"), view=(161070.03, 137.81, 161006.29, 19.81, 42.61))
	clone_survival(100, (162000, 100, 162000), (162100, 152, 162100), ("even_old_japan", "Old Japan", "Even"), view=(162054.95, 105.40, 162021.91, 16.36, -5.44))
	clone_survival(100, (163000, 100, 163000), (163075, 150, 163075), ("fireblast_bubulle", "Bubulle", "Stoupy"), view=(163021.55, 167.39, 163033.03, -88.89, 68.41))
	clone_survival(100, (164000, 100, 164000), (164075, 150, 164075), ("fireblast_cookie", "Smol Cookie", "Stoupy"), view=(164022.16, 153.99, 164035.08, 271.69, 75.49))
	clone_survival(100, (165000, 100, 165000), (165075, 150, 165075), ("fireblast_pork", "Vegan Pork", "Stoupy"), view=(165047.44, 155.84, 165052.22, 143.50, 67.83))

