
#> switch:maps/survival/stardust_boss_zone/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/stardust_boss_zone/teleport_players

