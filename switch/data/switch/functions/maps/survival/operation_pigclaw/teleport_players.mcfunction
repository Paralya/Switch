
data modify entity @s Pos set value [36041.5d, 151.5d, 36013.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/operation_pigclaw/spread_players
scoreboard players reset #do_spreadplayers switch.data

