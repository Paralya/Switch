
data modify entity @s Pos set value [45998.5d, 209.5d, 45984.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/taroatlas_soviet_prison/spread_players
scoreboard players reset #do_spreadplayers switch.data

