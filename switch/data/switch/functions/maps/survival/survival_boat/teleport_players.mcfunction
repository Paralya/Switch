
data modify entity @s Pos set value [79063.5d, 149.5d, 79051.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/survival_boat/spread_players
scoreboard players reset #do_spreadplayers switch.data

