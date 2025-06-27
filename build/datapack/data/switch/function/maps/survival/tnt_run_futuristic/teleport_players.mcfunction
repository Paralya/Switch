
#> switch:maps/survival/tnt_run_futuristic/teleport_players
#
# @within	switch:maps/survival/tnt_run_futuristic/main
#

data modify entity @s Pos set value [108993.5d, 136.5d, 109061.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/tnt_run_futuristic/spread_players
scoreboard players reset #do_spreadplayers switch.data

