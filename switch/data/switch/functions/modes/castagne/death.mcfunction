
attribute @s generic.attack_speed base set 4.0
gamemode spectator @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

