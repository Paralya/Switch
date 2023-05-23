
data modify entity @s Pos set value [11000.5d, 120.5d, 11000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/friends_pvpbox_ice/spread_players
scoreboard players reset #do_spreadplayers switch.data

