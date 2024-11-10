
#> switch:maps/survival/red_temple/teleport_players
#
# @within	switch:maps/survival/red_temple/main
#

data modify entity @s Pos set value [87023.5d, 110.5d, 87058.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/red_temple/spread_players
scoreboard players reset #do_spreadplayers switch.data

