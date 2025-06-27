
#> switch:maps/survival/yeti_in_panic/teleport_players
#
# @within	switch:maps/survival/yeti_in_panic/main
#

data modify entity @s Pos set value [158004.5d, 119.5d, 158053.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/yeti_in_panic/spread_players
scoreboard players reset #do_spreadplayers switch.data

