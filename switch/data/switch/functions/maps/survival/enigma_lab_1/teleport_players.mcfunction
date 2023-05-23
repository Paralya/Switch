
data modify entity @s Pos set value [53992.5d, 120.5d, 54047.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/enigma_lab_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

