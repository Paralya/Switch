
#> switch:maps/survival/elytra_box/teleport_players
#
# @within	switch:maps/survival/elytra_box/main
#

data modify entity @s Pos set value [5997.26.5d, 158.5.5d, 6003.76.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/elytra_box/spread_players
scoreboard players reset #do_spreadplayers switch.data

