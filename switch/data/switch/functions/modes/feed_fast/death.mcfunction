
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
scoreboard players set @s switch.alive 0
gamemode spectator @s
effect clear @s
clear @s

