
data modify entity @s Pos set value [104057.5d, 159.5d, 104095.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_boss_zone_nether/spread_players
scoreboard players reset #do_spreadplayers switch.data

