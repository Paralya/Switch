
##Maps disponibles :
#data modify storage switch:main maps_to_choose set value ["traitor_original","zone_51"]

scoreboard players set #list_length switch.data 0
execute store result score #list_length switch.data run data get storage switch:main maps_to_choose

summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[tag=switch.random] run function switch:engine/voting_time/get/random
execute unless score #random switch.data matches 0 run function switch:engine/maps/choose_loop

scoreboard players set #map_generated switch.data 0
data modify storage switch:main map set from storage switch:main maps_to_choose[0]
execute if data storage switch:main {map:"traitor_original"} run function switch:engine/maps/traitor_original/main
execute if data storage switch:main {map:"zone_51"} run function switch:engine/maps/zone_51/main

