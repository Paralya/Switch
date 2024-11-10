
#> switch:maps/survival/sprucy_village/teleport_players
#
# @within	switch:maps/survival/sprucy_village/main
#

data modify entity @s Pos set value [78085.5d, 119.5d, 78055.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sprucy_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

