
data modify entity @s Pos set value [41155.5d, 173.5d, 40945.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/huge_cargo/spread_players
scoreboard players reset #do_spreadplayers switch.data

