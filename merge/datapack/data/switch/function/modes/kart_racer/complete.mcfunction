
execute if entity @s[scores={switch.alive=1}] run function switch:modes/kart_racer/finished

execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s

