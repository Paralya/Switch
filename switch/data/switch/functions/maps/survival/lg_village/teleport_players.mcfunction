
data modify entity @s Pos set value [96123.5d, 120.5d, 96119.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lg_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

