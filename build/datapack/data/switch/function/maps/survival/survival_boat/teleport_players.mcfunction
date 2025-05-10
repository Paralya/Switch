
#> switch:maps/survival/survival_boat/teleport_players
#
# @within	switch:maps/survival/survival_boat/main
#

data modify entity @s Pos set value [72109.5d, 111.5d, 72109.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/survival_boat/spread_players
scoreboard players reset #do_spreadplayers switch.data

