
#> switch:maps/survival/friends_pvpbox_ice/main
#
# @within	???
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/friends_pvpbox_ice/teleport_players

