
data modify entity @s Pos set value [1000.5d, 105.5d, 1000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitchout_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

