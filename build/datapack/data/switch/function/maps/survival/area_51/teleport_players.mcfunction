
#> switch:maps/survival/area_51/teleport_players
#
# @within	switch:maps/survival/area_51/main
#

data modify entity @s Pos set value [2004.5d, 170.5d, 2002.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/area_51/spread_players
scoreboard players reset #do_spreadplayers switch.data
