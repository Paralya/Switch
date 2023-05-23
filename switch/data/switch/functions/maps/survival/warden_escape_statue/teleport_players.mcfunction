
data modify entity @s Pos set value [69055.5d, 136.5d, 69050.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/warden_escape_statue/spread_players
scoreboard players reset #do_spreadplayers switch.data

