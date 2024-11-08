
#> switch:maps/adventure/boat_race_1/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [5030.5d, 101.0d, 5002.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/boat_race_1/teleport_players

