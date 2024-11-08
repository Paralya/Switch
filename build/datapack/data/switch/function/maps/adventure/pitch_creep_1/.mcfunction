
#> switch:maps/adventure/pitch_creep_1/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [3500.5d, 103.5d, 3505.5d]

