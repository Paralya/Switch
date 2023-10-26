
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
scoreboard players set @s switch.alive 0
tag @s add switch.to_tp
execute if entity @s[gamemode=!spectator] run function switch:utils/death_tp
gamemode spectator @s
effect clear @s

