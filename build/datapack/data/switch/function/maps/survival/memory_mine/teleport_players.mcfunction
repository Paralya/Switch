
#> switch:maps/survival/memory_mine/teleport_players
#
# @within	switch:maps/survival/memory_mine/main
#

data modify entity @s Pos set value [153025.83.5d, 104.76.5d, 153033.63.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/memory_mine/spread_players
scoreboard players reset #do_spreadplayers switch.data

