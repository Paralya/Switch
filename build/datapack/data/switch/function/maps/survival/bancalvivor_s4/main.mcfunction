
#> switch:maps/survival/bancalvivor_s4/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] at @s run function switch:maps/survival/bancalvivor_s4/teleport_players

