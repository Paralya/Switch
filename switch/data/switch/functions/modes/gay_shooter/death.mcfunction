
execute if entity @s[gamemode=spectator] at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s

