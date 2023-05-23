
data modify entity @s Pos set value [2000.5d, 158.5d, 2000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/zone_51/spread_players
scoreboard players reset #do_spreadplayers switch.data

