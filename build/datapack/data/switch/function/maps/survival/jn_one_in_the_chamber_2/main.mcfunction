
#> switch:maps/survival/jn_one_in_the_chamber_2/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/jn_one_in_the_chamber_2/teleport_players

