
#> switch:maps/survival/snow_hills/teleport_players
#
# @within	switch:maps/survival/snow_hills/main
#

data modify entity @s Pos set value [50025.5d, 120.5d, 50010.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snow_hills/spread_players
scoreboard players reset #do_spreadplayers switch.data
