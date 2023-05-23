
data modify entity @s Pos set value [87023.5d, 110.5d, 87058.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/red_temple/spread_players
scoreboard players reset #do_spreadplayers switch.data

