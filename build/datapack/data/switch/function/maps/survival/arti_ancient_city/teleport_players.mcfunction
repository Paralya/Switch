
#> switch:maps/survival/arti_ancient_city/teleport_players
#
# @within	switch:maps/survival/arti_ancient_city/main
#

data modify entity @s Pos set value [157078.87.5d, 111.18.5d, 157104.12.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/arti_ancient_city/spread_players
scoreboard players reset #do_spreadplayers switch.data

