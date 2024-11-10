
#> switch:maps/survival/jn_ice_castles/teleport_players
#
# @within	switch:maps/survival/jn_ice_castles/main
#

data modify entity @s Pos set value [133027.5d, 106.5d, 133069.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_ice_castles/spread_players
scoreboard players reset #do_spreadplayers switch.data

