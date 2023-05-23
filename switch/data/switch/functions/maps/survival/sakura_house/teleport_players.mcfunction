
data modify entity @s Pos set value [86072.5d, 117.5d, 86100.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sakura_house/spread_players
scoreboard players reset #do_spreadplayers switch.data

