
data modify entity @s Pos set value [88039.5d, 110.5d, 88033.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/nature_house/spread_players
scoreboard players reset #do_spreadplayers switch.data

