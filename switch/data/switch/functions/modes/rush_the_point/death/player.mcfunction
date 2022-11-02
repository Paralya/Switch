
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
tag @s add switch.to_tp
gamemode spectator @s
effect clear @s
clear @s

