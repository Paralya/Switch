
#> switch:maps/survival/nature_house/teleport_players
#
# @within	switch:maps/survival/nature_house/main
#

data modify entity @s Pos set value [88025.5d, 110.5d, 88052.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/nature_house/spread_players
scoreboard players reset #do_spreadplayers switch.data

