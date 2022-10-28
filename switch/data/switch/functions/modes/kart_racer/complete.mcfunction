
execute if entity @s[tag=switch.playing] run function switch:modes/kart_racer/finished

execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s[tag=!switch.playing] ~ ~ ~
tag @s remove switch.playing
gamemode spectator @s
effect clear @s
clear @s

