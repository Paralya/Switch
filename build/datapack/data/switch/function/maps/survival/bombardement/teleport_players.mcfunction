
#> switch:maps/survival/bombardement/teleport_players
#
# @within	switch:maps/survival/bombardement/main
#

data modify entity @s Pos set value [121042.5d, 110.5d, 121079.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/bombardement/spread_players
scoreboard players reset #do_spreadplayers switch.data

