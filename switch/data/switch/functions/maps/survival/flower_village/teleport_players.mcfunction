
data modify entity @s Pos set value [89311.5d, 116.5d, 89291.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/flower_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

