
#> switch:maps/adventure/boat_race_2/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [51000.5d, 150.0d, 51000.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/boat_race_2/teleport_players

