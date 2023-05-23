
data modify entity @s Pos set value [47003.5d, 108.5d, 47006.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/desert_grand_library/spread_players
scoreboard players reset #do_spreadplayers switch.data

