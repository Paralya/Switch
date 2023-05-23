
data modify entity @s Pos set value [64037.5d, 112.5d, 64052.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/kart_racer_relai/spread_players
scoreboard players reset #do_spreadplayers switch.data

