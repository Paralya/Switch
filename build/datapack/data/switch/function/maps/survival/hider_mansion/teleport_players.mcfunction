
#> switch:maps/survival/hider_mansion/teleport_players
#
# @within	switch:maps/survival/hider_mansion/main
#

data modify entity @s Pos set value [71152.74.5d, 114.7.5d, 71047.07.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/hider_mansion/spread_players
scoreboard players reset #do_spreadplayers switch.data

