
#> switch:maps/survival/old_japan/teleport_players
#
# @within	switch:maps/survival/old_japan/main
#

data modify entity @s Pos set value [47058.5d, 106.5d, 47079.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/old_japan/spread_players
scoreboard players reset #do_spreadplayers switch.data

