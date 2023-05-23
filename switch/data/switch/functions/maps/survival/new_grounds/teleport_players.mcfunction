
data modify entity @s Pos set value [48000.5d, 113.5d, 48000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/new_grounds/spread_players
scoreboard players reset #do_spreadplayers switch.data

