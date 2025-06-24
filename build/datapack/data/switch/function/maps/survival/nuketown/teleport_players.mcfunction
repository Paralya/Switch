
#> switch:maps/survival/nuketown/teleport_players
#
# @within	switch:maps/survival/nuketown/main
#

data modify entity @s Pos set value [72087.17.5d, 117.13.5d, 72105.28.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/nuketown/spread_players
scoreboard players reset #do_spreadplayers switch.data

