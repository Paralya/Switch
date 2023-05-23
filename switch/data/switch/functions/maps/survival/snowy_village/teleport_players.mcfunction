
data modify entity @s Pos set value [92108.5d, 123.5d, 92090.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snowy_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

