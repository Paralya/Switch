
data modify entity @s Pos set value [66042.5d, 115.5d, 66040.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/find_the_wool/spread_players
scoreboard players reset #do_spreadplayers switch.data

