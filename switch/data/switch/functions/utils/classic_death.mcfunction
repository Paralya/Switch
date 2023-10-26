
# If just died, teleport to the death pos, else teleport back to the map
execute if score @s switch.last_death matches ..5 run function switch:utils/death_tp
execute unless score @s switch.last_death matches ..5 at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~

# Clear & spectator
gamemode spectator @s
effect clear @s
clear @s

