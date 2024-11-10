
#> switch:maps/survival/stardust_pvp_zone/teleport_players
#
# @within	switch:maps/survival/stardust_pvp_zone/main
#

data modify entity @s Pos set value [105164.5d, 158.5d, 105165.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_pvp_zone/spread_players
scoreboard players reset #do_spreadplayers switch.data

