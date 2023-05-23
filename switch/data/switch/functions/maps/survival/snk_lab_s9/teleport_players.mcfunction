
data modify entity @s Pos set value [75044.5d, 117.5d, 75038.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snk_lab_s9/spread_players
scoreboard players reset #do_spreadplayers switch.data

