
data modify entity @s Pos set value [7000.5d, 136.5d, 7000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/enchanting_island/spread_players
scoreboard players reset #do_spreadplayers switch.data

