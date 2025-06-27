
#> switch:maps/survival/floating_island/teleport_players
#
# @within	switch:maps/survival/floating_island/main
#

data modify entity @s Pos set value [94050.5d, 158.5d, 94066.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/floating_island/spread_players
scoreboard players reset #do_spreadplayers switch.data

