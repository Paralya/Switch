
#> switch:maps/survival/lost_graveyard_remastered/main
#
# @within	???
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/lost_graveyard_remastered/teleport_players

