
data modify entity @s Pos set value [68012.5d, 116.5d, 68015.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/plucky_penguins/spread_players
scoreboard players reset #do_spreadplayers switch.data

