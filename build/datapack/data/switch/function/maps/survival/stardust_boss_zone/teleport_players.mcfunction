
#> switch:maps/survival/stardust_boss_zone/teleport_players
#
# @within	switch:maps/survival/stardust_boss_zone/main
#

data modify entity @s Pos set value [103057.5d, 154.5d, 103095.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_boss_zone/spread_players
scoreboard players reset #do_spreadplayers switch.data

