
data modify entity @s Pos set value [62044.5d, 111.5d, 62046.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/blindtest/spread_players
scoreboard players reset #do_spreadplayers switch.data

