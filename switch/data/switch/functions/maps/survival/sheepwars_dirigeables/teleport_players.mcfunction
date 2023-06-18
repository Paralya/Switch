
data modify entity @s Pos set value [100156.5d, 163.5d, 100122.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_dirigeables/spread_players
scoreboard players reset #do_spreadplayers switch.data

