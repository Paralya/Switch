
team join switch.temp.human @s
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s
effect give @s hunger 12 255 true

