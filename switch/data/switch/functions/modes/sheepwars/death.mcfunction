
# Reset score and teleport to the selected map in spectator mode
scoreboard players reset @s switch.temp.deathCount
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
gamemode spectator @s
effect clear @s




function switch:modes/engine/utils/death_tp


