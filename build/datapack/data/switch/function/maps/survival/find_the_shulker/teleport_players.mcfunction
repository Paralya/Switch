
#> switch:maps/survival/find_the_shulker/teleport_players
#
# @within	switch:maps/survival/find_the_shulker/main
#

data modify entity @s Pos set value [57037.5d, 120.5d, 57056.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/find_the_shulker/spread_players
scoreboard players reset #do_spreadplayers switch.data

