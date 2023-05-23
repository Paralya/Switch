
data modify entity @s Pos set value [52000.5d, 135.5d, 52000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/vilarles_castillo/spread_players
scoreboard players reset #do_spreadplayers switch.data

