
data modify entity @s Pos set value [109029.5d, 148.5d, 109022.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/tnt_run_futuristic/spread_players
scoreboard players reset #do_spreadplayers switch.data
