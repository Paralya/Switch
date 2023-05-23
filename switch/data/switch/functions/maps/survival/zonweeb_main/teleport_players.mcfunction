
data modify entity @s Pos set value [32000.5d, 116.5d, 32000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/zonweeb_main/spread_players
scoreboard players reset #do_spreadplayers switch.data

