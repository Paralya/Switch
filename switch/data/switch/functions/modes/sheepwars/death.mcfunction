
# Reset score and teleport to the selected map in spectator mode
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
execute if entity @s[gamemode=!spectator] run function switch:utils/death_tp
gamemode spectator @s
effect clear @s






