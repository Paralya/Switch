
# If just died, teleport to the death pos, else teleport back to the map
scoreboard players set #success switch.data 0
execute if score @s switch.last_death matches ..2 if score @s switch.reconnect = #score switch.reconnect run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run function switch:utils/death_tp
execute unless score #success switch.data matches 1 at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~

# Clear & spectator
gamemode spectator @s
effect clear @s
clear @s

