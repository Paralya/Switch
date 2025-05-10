
#> switch:maps/survival/warden_forest/teleport_players
#
# @within	switch:maps/survival/warden_forest/main
#

data modify entity @s Pos set value [10065.74.5d, 106.68.5d, 10021.88.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/warden_forest/spread_players
scoreboard players reset #do_spreadplayers switch.data

