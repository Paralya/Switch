
#> switch:maps/survival/plucky_penguins/main
#
# @within	???
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/plucky_penguins/teleport_players
