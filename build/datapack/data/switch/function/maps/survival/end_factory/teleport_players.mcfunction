
#> switch:maps/survival/end_factory/teleport_players
#
# @within	switch:maps/survival/end_factory/main
#

data modify entity @s Pos set value [108146.5d, 133.5d, 108076.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/end_factory/spread_players
scoreboard players reset #do_spreadplayers switch.data

