
data modify entity @s Pos set value [33939.5d, 134.5d, 33930.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jayl_dark_forest/spread_players
scoreboard players reset #do_spreadplayers switch.data

