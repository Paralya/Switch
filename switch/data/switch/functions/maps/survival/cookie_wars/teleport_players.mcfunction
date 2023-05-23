
data modify entity @s Pos set value [49000.5d, 123.5d, 49000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cookie_wars/spread_players
scoreboard players reset #do_spreadplayers switch.data

