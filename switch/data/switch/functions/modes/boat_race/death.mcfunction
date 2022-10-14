
scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

