
#> switch:maps/survival/sky_island_tower/main
#
# @within	???
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/sky_island_tower/teleport_players

