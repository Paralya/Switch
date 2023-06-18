
data modify entity @s Pos set value [106067.5d, 115.5d, 106064.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_prison/spread_players
scoreboard players reset #do_spreadplayers switch.data

