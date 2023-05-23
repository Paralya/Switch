
data modify entity @s Pos set value [42000.5d, 112.5d, 42000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ghost_town/spread_players
scoreboard players reset #do_spreadplayers switch.data

