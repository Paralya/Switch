
#> switch:maps/survival/ocean_waste/teleport_players
#
# @within	switch:maps/survival/ocean_waste/main
#

data modify entity @s Pos set value [64070.5d, 138.5d, 64006.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ocean_waste/spread_players
scoreboard players reset #do_spreadplayers switch.data

