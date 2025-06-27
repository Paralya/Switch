
#> switch:maps/survival/stardust_boss_zone_nether/teleport_players
#
# @within	switch:maps/survival/stardust_boss_zone_nether/main
#

data modify entity @s Pos set value [104028.5d, 158.5d, 104131.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/stardust_boss_zone_nether/spread_players
scoreboard players reset #do_spreadplayers switch.data

