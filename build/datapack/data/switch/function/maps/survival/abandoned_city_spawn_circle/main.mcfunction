
#> switch:maps/survival/abandoned_city_spawn_circle/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/abandoned_city_spawn_circle/teleport_players

