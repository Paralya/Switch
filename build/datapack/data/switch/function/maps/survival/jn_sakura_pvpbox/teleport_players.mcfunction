
#> switch:maps/survival/jn_sakura_pvpbox/teleport_players
#
# @within	switch:maps/survival/jn_sakura_pvpbox/main
#

data modify entity @s Pos set value [135079.5d, 118.5d, 135085.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_sakura_pvpbox/spread_players
scoreboard players reset #do_spreadplayers switch.data

