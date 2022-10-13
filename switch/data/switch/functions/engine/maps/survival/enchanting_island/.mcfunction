
##Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run function switch:engine/maps/survival/enchanting_island/teleport_players

