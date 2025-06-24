
#> switch:maps/survival/new_grounds/teleport_players
#
# @within	switch:maps/survival/new_grounds/main
#

data modify entity @s Pos set value [48065.56.5d, 118.22.5d, 48062.48.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/new_grounds/spread_players
scoreboard players reset #do_spreadplayers switch.data

