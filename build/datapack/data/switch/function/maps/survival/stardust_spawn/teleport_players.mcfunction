
#> switch:maps/survival/stardust_spawn/teleport_players
#
# @within	switch:maps/survival/stardust_spawn/main
#

data modify entity @s Pos set value [101040.87.5d, 174.88.5d, 101026.31.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_spawn/spread_players
scoreboard players reset #do_spreadplayers switch.data

