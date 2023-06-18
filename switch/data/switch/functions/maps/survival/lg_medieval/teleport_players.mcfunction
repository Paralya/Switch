
data modify entity @s Pos set value [95036.5d, 157.5d, 95037.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lg_medieval/spread_players
scoreboard players reset #do_spreadplayers switch.data

