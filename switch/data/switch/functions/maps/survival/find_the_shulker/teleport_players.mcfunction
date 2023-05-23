
data modify entity @s Pos set value [57037.5d, 120.5d, 57056.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/find_the_shulker/spread_players
scoreboard players reset #do_spreadplayers switch.data

