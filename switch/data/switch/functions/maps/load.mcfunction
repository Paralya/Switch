
##Choix d'une map random de la liste maps_to_choose
##Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main maps_to_choose
function switch:maps/find_map

data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map


#Maps that regenerate (gamemode survival, may be adventure):
execute if data storage switch:main {map:"traitor_original"} run function switch:maps/survival/traitor_original/
execute if data storage switch:main {map:"zone_51"} run function switch:maps/survival/zone_51/
execute if data storage switch:main {map:"spectre_original"} run function switch:maps/survival/spectre_original/
execute if data storage switch:main {map:"mushroom_plains"} run function switch:maps/survival/mushroom_plains/
execute if data storage switch:main {map:"enchanting_island"} run function switch:maps/survival/enchanting_island/
execute if data storage switch:main {map:"friends_cube_lobby"} run function switch:maps/survival/friends_cube_lobby/
execute if data storage switch:main {map:"rush_the_point_1"} run function switch:maps/survival/rush_the_point_1/
execute if data storage switch:main {map:"spleef_1"} run function switch:maps/survival/spleef_1/
execute if data storage switch:main {map:"de_a_coudre_1"} run function switch:maps/survival/de_a_coudre_1/
execute if data storage switch:main {map:"mlg_a_coudre_1"} run function switch:maps/survival/mlg_a_coudre_1/
execute if data storage switch:main {map:"zonweeb_main"} run function switch:maps/survival/zonweeb_main/
execute if data storage switch:main {map:"jayl_dark_forest"} run function switch:maps/survival/jayl_dark_forest/
execute if data storage switch:main {map:"dark_forest_hills"} run function switch:maps/survival/dark_forest_hills/


#Maps that doesn't (always gamemode adventure):
execute if data storage switch:main {map:"pitch_creep_1"} run function switch:maps/adventure/pitch_creep_1/
execute if data storage switch:main {map:"pitch_creep_2"} run function switch:maps/adventure/pitch_creep_2/
execute if data storage switch:main {map:"pitchout_1"} run function switch:maps/adventure/pitchout_1/
execute if data storage switch:main {map:"boat_race_1"} run function switch:maps/adventure/boat_race_1/
execute if data storage switch:main {map:"laser_game"} run function switch:maps/adventure/laser_game/
execute if data storage switch:main {map:"prison"} run function switch:maps/adventure/prison/
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
execute if data storage switch:main {map:"trackmania_stadium_1"} run function switch:maps/adventure/trackmania_stadium_1/
execute if data storage switch:main {map:"trackmania_stadium_2"} run function switch:maps/adventure/trackmania_stadium_2/
execute if data storage switch:main {map:"cathedrale_liege"} run function switch:maps/adventure/cathedrale_liege/
execute if data storage switch:main {map:"dishorreur"} run function switch:maps/adventure/dishorreur/
execute if data storage switch:main {map:"operation_pigclaw"} run function switch:maps/adventure/operation_pigclaw/

