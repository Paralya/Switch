
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
gamemode spectator @s[team=!switch.temp.gays]
effect clear @s
clear @s

