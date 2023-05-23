
data modify entity @s Pos set value [26000.5d, 120.5d, 26000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cathedrale_liege/spread_players
scoreboard players reset #do_spreadplayers switch.data

