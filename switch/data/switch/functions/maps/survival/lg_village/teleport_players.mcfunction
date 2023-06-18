
data modify entity @s Pos set value [96128.5d, 113.5d, 96118.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lg_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

