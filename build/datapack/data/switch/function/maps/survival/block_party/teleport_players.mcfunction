
#> switch:maps/survival/block_party/teleport_players
#
# @within	switch:maps/survival/block_party/main
#

data modify entity @s Pos set value [109951.05.5d, 42.21.5d, 110071.73.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/block_party/spread_players
scoreboard players reset #do_spreadplayers switch.data

