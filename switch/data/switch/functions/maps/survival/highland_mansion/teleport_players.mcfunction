
data modify entity @s Pos set value [85075.5d, 136.5d, 85071.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/highland_mansion/spread_players
scoreboard players reset #do_spreadplayers switch.data

