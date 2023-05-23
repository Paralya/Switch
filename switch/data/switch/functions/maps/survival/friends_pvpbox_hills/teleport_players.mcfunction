
data modify entity @s Pos set value [11999.5d, 123.5d, 11996.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_pvpbox_hills/spread_players
scoreboard players reset #do_spreadplayers switch.data

