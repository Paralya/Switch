
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
tag @s remove switch.alive
tag @s add switch.to_tp
execute if entity @s[gamemode=!spectator] run function switch:engine/utils/death_tp
gamemode spectator @s
effect clear @s

