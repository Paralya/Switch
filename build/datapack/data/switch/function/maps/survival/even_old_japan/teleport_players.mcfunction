
#> switch:maps/survival/even_old_japan/teleport_players
#
# @within	switch:maps/survival/even_old_japan/main
#

data modify entity @s Pos set value [162038.5d, 109.5d, 162043.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/even_old_japan/spread_players
scoreboard players reset #do_spreadplayers switch.data

