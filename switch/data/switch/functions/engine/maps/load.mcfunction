
##Choix d'une map random de la liste maps_to_choose
##Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main maps_to_choose
function switch:engine/maps/find_map

data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map


#Maps that regenerate (gamemode survival, may be adventure):
execute if data storage switch:main {map:"traitor_original"} run function switch:engine/maps/survival/traitor_original/
execute if data storage switch:main {map:"zone_51"} run function switch:engine/maps/survival/zone_51/
execute if data storage switch:main {map:"spectre_original"} run function switch:engine/maps/survival/spectre_original/
execute if data storage switch:main {map:"mushroom_plains"} run function switch:engine/maps/survival/mushroom_plains/
execute if data storage switch:main {map:"enchanting_island"} run function switch:engine/maps/survival/enchanting_island/
execute if data storage switch:main {map:"friends_cube_lobby"} run function switch:engine/maps/survival/friends_cube_lobby/
execute if data storage switch:main {map:"rush_the_point_1"} run function switch:engine/maps/survival/rush_the_point_1/
execute if data storage switch:main {map:"spleef_1"} run function switch:engine/maps/survival/spleef_1/
execute if data storage switch:main {map:"de_a_coudre_1"} run function switch:engine/maps/survival/de_a_coudre_1/


#Maps that doesn't (always gamemode adventure):
execute if data storage switch:main {map:"pitch_creep_1"} run function switch:engine/maps/adventure/pitch_creep_1/
execute if data storage switch:main {map:"pitchout_1"} run function switch:engine/maps/adventure/pitchout_1/
execute if data storage switch:main {map:"boat_race_1"} run function switch:engine/maps/adventure/boat_race_1/
execute if data storage switch:main {map:"laser_game"} run function switch:engine/maps/adventure/laser_game/
execute if data storage switch:main {map:"prison"} run function switch:engine/maps/adventure/prison/
execute if data storage switch:main {map:"epsilon_circuit"} run function switch:engine/maps/adventure/epsilon_circuit/
execute if data storage switch:main {map:"mario_circuit"} run function switch:engine/maps/adventure/mario_circuit/
execute if data storage switch:main {map:"fast_circuit"} run function switch:engine/maps/adventure/fast_circuit/
execute if data storage switch:main {map:"city_race"} run function switch:engine/maps/adventure/city_race/
execute if data storage switch:main {map:"sakura_land"} run function switch:engine/maps/adventure/sakura_land/
execute if data storage switch:main {map:"hills_land"} run function switch:engine/maps/adventure/hills_land/
execute if data storage switch:main {map:"airship_fortress"} run function switch:engine/maps/adventure/airship_fortress/
execute if data storage switch:main {map:"dk_mountain"} run function switch:engine/maps/adventure/dk_mountain/
execute if data storage switch:main {map:"clock_circuit"} run function switch:engine/maps/adventure/clock_circuit/
execute if data storage switch:main {map:"baby_park"} run function switch:engine/maps/adventure/baby_park/
execute if data storage switch:main {map:"bowser_castle"} run function switch:engine/maps/adventure/bowser_castle/
execute if data storage switch:main {map:"snow_travel"} run function switch:engine/maps/adventure/snow_travel/
execute if data storage switch:main {map:"trackmania_stadium_1"} run function switch:engine/maps/adventure/trackmania_stadium_1/
execute if data storage switch:main {map:"cathedrale_liege"} run function switch:engine/maps/adventure/cathedrale_liege/

#snow_drive à faire

