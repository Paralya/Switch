
#> switch:maps/adventure/minigolf/
#
# @within	???
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/adventure/minigolf/teleport_players

