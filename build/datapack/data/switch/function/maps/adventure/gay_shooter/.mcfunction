
#> switch:maps/adventure/gay_shooter/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/adventure/gay_shooter/teleport_players

