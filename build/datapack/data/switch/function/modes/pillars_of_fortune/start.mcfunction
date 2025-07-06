
#> switch:modes/pillars_of_fortune/start
#
# @within	switch:modes/pillars_of_fortune/calls/start
#

gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:utils/choose_map_for {id:"pillars_of_fortune", maps:["pillars_of_fortune", "slimy_ground", "eternal_void", "floor_is_lava", "leather_boots", "ocean_waste"]}
function switch:translations/modes_pillars_of_fortune_start

execute in switch:game run gamerule mobGriefing true

scoreboard players set #remaining_time switch.data 605
scoreboard players set #pillars_of_fortune_seconds switch.data -10
scoreboard players set #pillars_of_fortune_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

## Count the number of players to compute the angle difference between pillars (360 / number of players = angle difference)
# 360.000 for precision
execute store result score #count switch.data if entity @a[tag=!detached]
#execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon armor_stand ~ ~ ~ {Tags:["switch.place_pillar"]}
#scoreboard players add #count switch.data 16
scoreboard players set #angle_difference switch.data 360000
scoreboard players operation #angle_difference switch.data /= #count switch.data

## Compute the radius
# distance = 1.25 * count
scoreboard players set #distance_to_center switch.data 1250
scoreboard players operation #distance_to_center switch.data *= #count switch.data
# Clamp between 5000 (5 blocks) and 45000 (45 blocks)
execute if score #distance_to_center switch.data matches ..4999 run scoreboard players set #distance_to_center switch.data 5000
execute if score #distance_to_center switch.data matches 45001.. run scoreboard players set #distance_to_center switch.data 45000

## Prepare a storage for the angle to increment for each player we'll teleport
data modify storage switch:temp input set value {angle_difference: 0.0f, distance_to_center: 0.0f}
execute store result storage switch:temp input.angle_difference float 0.001 run scoreboard players get #angle_difference switch.data
execute store result storage switch:temp input.distance_to_center float 0.001 run scoreboard players get #distance_to_center switch.data

# Place players on pillars
tag @a[tag=!detached] add switch.place_pillar
execute if data storage switch:main {map:"pillars_of_fortune"} in switch:game positioned 161050 142 161050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"slimy_ground"} in switch:game positioned 60050 142 60050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"eternal_void"} in switch:game positioned 61050 142 61050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"floor_is_lava"} in switch:game positioned 62050 142 62050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"leather_boots"} in switch:game positioned 63050 142 63050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"ocean_waste"} in switch:game positioned 64050 142 64050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input

