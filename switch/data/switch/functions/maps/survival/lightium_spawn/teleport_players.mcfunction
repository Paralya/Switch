
data modify entity @s Pos set value [97065.5d, 111.5d, 97065.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lightium_spawn/spread_players
scoreboard players reset #do_spreadplayers switch.data

