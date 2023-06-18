
data modify entity @s Pos set value [101060.5d, 156.5d, 101060.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_spawn/spread_players
scoreboard players reset #do_spreadplayers switch.data

