
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
gamemode spectator @s[team=!switch.temp.gays]
effect clear @s
clear @s

effect give @s[team=switch.temp.gays] saturation infinite 255 true

