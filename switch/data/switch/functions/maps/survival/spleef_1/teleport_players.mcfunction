
data modify entity @s Pos set value [28000.5d, 100.5d, 28000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/spleef_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

