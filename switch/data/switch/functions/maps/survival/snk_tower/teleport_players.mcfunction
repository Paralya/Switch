
data modify entity @s Pos set value [61042.5d, 144.5d, 61024.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snk_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

