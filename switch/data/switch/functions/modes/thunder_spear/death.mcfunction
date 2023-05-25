
gamemode spectator @s
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

