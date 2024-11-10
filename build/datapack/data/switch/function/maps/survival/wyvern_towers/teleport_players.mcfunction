
#> switch:maps/survival/wyvern_towers/teleport_players
#
# @within	switch:maps/survival/wyvern_towers/main
#

data modify entity @s Pos set value [94036.5d, 157.5d, 94037.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/wyvern_towers/spread_players
scoreboard players reset #do_spreadplayers switch.data

