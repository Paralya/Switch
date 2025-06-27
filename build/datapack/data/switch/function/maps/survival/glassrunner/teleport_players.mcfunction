
#> switch:maps/survival/glassrunner/teleport_players
#
# @within	switch:maps/survival/glassrunner/main
#

data modify entity @s Pos set value [3003.5d, 139.5d, 2988.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/glassrunner/spread_players
scoreboard players reset #do_spreadplayers switch.data

