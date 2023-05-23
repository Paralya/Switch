
data modify entity @s Pos set value [3000.5d, 130.5d, 3000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/glassrunner/spread_players
scoreboard players reset #do_spreadplayers switch.data

