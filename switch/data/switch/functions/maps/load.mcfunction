
## Choix d'une map random de la liste maps_to_choose
## Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main maps_to_choose
function switch:maps/find_map

data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map


# Maps that regenerate (gamemode survival, may be adventure):
execute if data storage switch:main {map:"traitor_original"} run function switch:maps/survival/traitor_original/
execute if data storage switch:main {map:"zone_51"} run function switch:maps/survival/zone_51/
execute if data storage switch:main {map:"spectre_original"} run function switch:maps/survival/spectre_original/
# glass runner
execute if data storage switch:main {map:"mushroom_plains"} run function switch:maps/survival/mushroom_plains/
execute if data storage switch:main {map:"enchanting_island"} run function switch:maps/survival/enchanting_island/
# execute if data storage switch:main {map:"friends_oneforall"} run function switch:maps/adventure/friends_oneforall/
execute if data storage switch:main {map:"rush_the_point_1"} run function switch:maps/survival/rush_the_point_1/
# execute if data storage switch:main {map:"friends_skywars_1"} run function switch:maps/adventure/friends_skywars_1/
# execute if data storage switch:main {map:"friends_skywars_2"} run function switch:maps/adventure/friends_skywars_2/
execute if data storage switch:main {map:"friends_cube_lobby"} run function switch:maps/survival/friends_cube_lobby/
# Layers
execute if data storage switch:main {map:"spleef_1"} run function switch:maps/survival/spleef_1/
execute if data storage switch:main {map:"de_a_coudre_1"} run function switch:maps/survival/de_a_coudre_1/
# Map arobaze
execute if data storage switch:main {map:"mlg_a_coudre_1"} run function switch:maps/survival/mlg_a_coudre_1/
execute if data storage switch:main {map:"zonweeb_main"} run function switch:maps/survival/zonweeb_main/
execute if data storage switch:main {map:"jayl_dark_forest"} run function switch:maps/survival/jayl_dark_forest/
execute if data storage switch:main {map:"dark_forest_hills"} run function switch:maps/survival/dark_forest_hills/
# execute if data storage switch:main {map:"ghost_town"} run function switch:maps/adventure/ghost_town/
# execute if data storage switch:main {map:"desert_grand_library"} run function switch:maps/adventure/desert_grand_library/
# execute if data storage switch:main {map:"snow_hills"} run function switch:maps/adventure/snow_hills/
# execute if data storage switch:main {map:"vilarles_castillo"} run function switch:maps/adventure/vilarles_castillo/
# execute if data storage switch:main {map:"zonweeb_highschool"} run function switch:maps/adventure/zonweeb_highschool/
# EnigmaLab 1 (54000)
# Sumo Lawef (55000)
# Find the shulker (57000)
# Colliseum (59000)
# Scary Labyrinth (60000)
# SNK Tower (61000)
# Blindtest (62000)
# Drive the pig (63000)
# Orange rings (65000)
# Find the wool (66000)
# SNK Lab s9 (67000)
# Zoo enter (68000)
# Warden Escape Statue (69000)
# Hider mansion (71000)
# Nuketown (72000)
# EnigmaLab 2 (73000)
# Layers 2 (74000)
# SNK Lab s11 (75000)
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



# Maps that doesn't (always gamemode adventure):
execute if data storage switch:main {map:"laser_game"} run function switch:maps/adventure/laser_game/
execute if data storage switch:main {map:"pitchout_1"} run function switch:maps/adventure/pitchout_1/
execute if data storage switch:main {map:"pitch_creep_1"} run function switch:maps/adventure/pitch_creep_1/
execute if data storage switch:main {map:"boat_race_1"} run function switch:maps/adventure/boat_race_1/
# execute if data storage switch:main {map:"friends_black_ball"} run function switch:maps/adventure/friends_black_ball/
# execute if data storage switch:main {map:"friends_cube_jump"} run function switch:maps/adventure/friends_cube_jump/
execute if data storage switch:main {map:"warden_forest"} run function switch:maps/adventure/warden_forest/
execute if data storage switch:main {map:"friends_pvpbox_ice"} run function switch:maps/adventure/friends_pvpbox_ice/
execute if data storage switch:main {map:"friends_pvpbox_hills"} run function switch:maps/adventure/friends_pvpbox_hills/
execute if data storage switch:main {map:"friends_pvpbox_end"} run function switch:maps/adventure/friends_pvpbox_end/
execute if data storage switch:main {map:"epsilon_circuit"} run function switch:maps/adventure/epsilon_circuit/
execute if data storage switch:main {map:"mario_circuit"} run function switch:maps/adventure/mario_circuit/
execute if data storage switch:main {map:"fast_circuit"} run function switch:maps/adventure/fast_circuit/
execute if data storage switch:main {map:"plains_routine"} run function switch:maps/adventure/plains_routine/
execute if data storage switch:main {map:"city_race"} run function switch:maps/adventure/city_race/
execute if data storage switch:main {map:"sakura_land"} run function switch:maps/adventure/sakura_land/
execute if data storage switch:main {map:"hills_land"} run function switch:maps/adventure/hills_land/
execute if data storage switch:main {map:"airship_fortress"} run function switch:maps/adventure/airship_fortress/
execute if data storage switch:main {map:"dk_mountain"} run function switch:maps/adventure/dk_mountain/
execute if data storage switch:main {map:"clock_circuit"} run function switch:maps/adventure/clock_circuit/
execute if data storage switch:main {map:"baby_park"} run function switch:maps/adventure/baby_park/
execute if data storage switch:main {map:"bowser_castle"} run function switch:maps/adventure/bowser_castle/
execute if data storage switch:main {map:"snow_travel"} run function switch:maps/adventure/snow_travel/
execute if data storage switch:main {map:"rainbow_road"} run function switch:maps/adventure/rainbow_road/
execute if data storage switch:main {map:"trackmania_stadium_1"} run function switch:maps/adventure/trackmania_stadium_1/
execute if data storage switch:main {map:"cathedrale_liege"} run function switch:maps/adventure/cathedrale_liege/
execute if data storage switch:main {map:"dishorreur"} run function switch:maps/adventure/dishorreur/
# Arti mansion (35000) execute if data storage switch:main {map:"arti_mansion"} run function switch:maps/adventure/arti_mansion/
execute if data storage switch:main {map:"operation_pigclaw"} run function switch:maps/adventure/operation_pigclaw/
execute if data storage switch:main {map:"trackmania_stadium_2"} run function switch:maps/adventure/trackmania_stadium_2/
execute if data storage switch:main {map:"pitch_creep_2"} run function switch:maps/adventure/pitch_creep_2/
execute if data storage switch:main {map:"paralya_lobby_noel"} run function switch:maps/adventure/paralya_lobby_noel/
execute if data storage switch:main {map:"huge_cargo"} run function switch:maps/adventure/huge_cargo/
execute if data storage switch:main {map:"abandoned_city_spawn_circle"} run function switch:maps/adventure/abandoned_city_spawn_circle/
execute if data storage switch:main {map:"abandoned_city"} run function switch:maps/adventure/abandoned_city/
execute if data storage switch:main {map:"taroatlas_soviet_prison"} run function switch:maps/adventure/taroatlas_soviet_prison/
execute if data storage switch:main {map:"new_grounds"} run function switch:maps/adventure/new_grounds/
execute if data storage switch:main {map:"cookie_wars"} run function switch:maps/adventure/cookie_wars/
execute if data storage switch:main {map:"boat_race_2"} run function switch:maps/adventure/boat_race_2/
# CSGO Map, faut trouver le nom (56000)
# Scartmania (58000)
# Kart Racer relai (64000)
# Giant Zoo (70000)
# Fish the pig (76000)


