
data modify entity @s Pos set value [40000.5d, 186.5d, 40000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/paralya_lobby_noel/spread_players
scoreboard players reset #do_spreadplayers switch.data

