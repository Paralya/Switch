
#> switch:maps/survival/torg_arena/teleport_players
#
# @within	switch:maps/survival/torg_arena/main
#

data modify entity @s Pos set value [65005.5d, 119.5d, 65039.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/torg_arena/spread_players
scoreboard players reset #do_spreadplayers switch.data

