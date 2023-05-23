
data modify entity @s Pos set value [80071.5d, 320.5d, 80071.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sky_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

