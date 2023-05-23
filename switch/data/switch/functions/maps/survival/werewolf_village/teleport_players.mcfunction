
data modify entity @s Pos set value [93061.5d, 115.5d, 93061.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/werewolf_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

