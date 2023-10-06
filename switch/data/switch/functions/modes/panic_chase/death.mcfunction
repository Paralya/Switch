
# Reset score and teleport
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
execute if entity @s[gamemode=!spectator] run function switch:engine/utils/death_tp

gamemode spectator @s
effect clear @s

