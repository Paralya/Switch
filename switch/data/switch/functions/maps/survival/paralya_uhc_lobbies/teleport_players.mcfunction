
data modify entity @s Pos set value [98037.5d, 154.5d, 98046.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/paralya_uhc_lobbies/spread_players
scoreboard players reset #do_spreadplayers switch.data
