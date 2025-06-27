
#> switch:maps/survival/jn_nature_box/teleport_players
#
# @within	switch:maps/survival/jn_nature_box/main
#

data modify entity @s Pos set value [130029.82.5d, 124.07.5d, 130024.58.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_nature_box/spread_players
scoreboard players reset #do_spreadplayers switch.data

