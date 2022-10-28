
##Maps disponibles listées ici

scoreboard players set #list_length switch.data 0
execute store result score #list_length switch.data run data get storage switch:main maps_to_choose

summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[tag=switch.random] run function switch:engine/voting_time/get/random
execute unless score #random switch.data matches 0 run function switch:engine/maps/choose_loop

data modify storage switch:main map set from storage switch:main maps_to_choose[0]

#Maps that regenerate (gamemode survival):
execute if data storage switch:main {map:"traitor_original"} run function switch:engine/maps/survival/traitor_original/
execute if data storage switch:main {map:"zone_51"} run function switch:engine/maps/survival/zone_51/
execute if data storage switch:main {map:"spectre_original"} run function switch:engine/maps/survival/spectre_original/
execute if data storage switch:main {map:"mushroom_plains"} run function switch:engine/maps/survival/mushroom_plains/
execute if data storage switch:main {map:"enchanting_island"} run function switch:engine/maps/survival/enchanting_island/
execute if data storage switch:main {map:"friends_cube_lobby"} run function switch:engine/maps/survival/friends_cube_lobby/

#Maps that doesn't (gamemode adventure):
execute if data storage switch:main {map:"pitch_creep_1"} run function switch:engine/maps/adventure/pitch_creep_1/
execute if data storage switch:main {map:"pitchout_1"} run function switch:engine/maps/adventure/pitchout_1/
execute if data storage switch:main {map:"boat_race_1"} run function switch:engine/maps/adventure/boat_race_1/
execute if data storage switch:main {map:"laser_game"} run function switch:engine/maps/adventure/laser_game/
execute if data storage switch:main {map:"prison"} run function switch:engine/maps/adventure/prison/

execute if data storage switch:main {map:"bowser_castle"} run function switch:engine/maps/adventure/bowser_castle/
execute if data storage switch:main {map:"snow_travel"} run function switch:engine/maps/adventure/snow_travel/
execute if data storage switch:main {map:"trackmania_stadium_1"} run function switch:engine/maps/adventure/trackmania_stadium_1/



