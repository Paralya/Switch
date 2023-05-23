
data modify entity @s Pos set value [60091.5d, 110.5d, 60037.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/scary_labyrinth/spread_players
scoreboard players reset #do_spreadplayers switch.data

