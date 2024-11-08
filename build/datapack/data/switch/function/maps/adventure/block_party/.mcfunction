
#> switch:maps/adventure/block_party/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/adventure/block_party/teleport_players

