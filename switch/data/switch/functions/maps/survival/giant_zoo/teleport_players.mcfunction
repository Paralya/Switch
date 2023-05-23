
data modify entity @s Pos set value [70026.5d, 123.5d, 70126.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/giant_zoo/spread_players
scoreboard players reset #do_spreadplayers switch.data

