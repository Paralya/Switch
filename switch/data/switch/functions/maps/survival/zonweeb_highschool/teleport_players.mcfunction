
data modify entity @s Pos set value [53000.5d, 112.5d, 53000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/zonweeb_highschool/spread_players
scoreboard players reset #do_spreadplayers switch.data

