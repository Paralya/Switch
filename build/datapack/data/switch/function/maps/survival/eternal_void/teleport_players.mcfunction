
#> switch:maps/survival/eternal_void/teleport_players
#
# @within	switch:maps/survival/eternal_void/main
#

data modify entity @s Pos set value [61070.5d, 138.5d, 61006.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/eternal_void/spread_players
scoreboard players reset #do_spreadplayers switch.data

