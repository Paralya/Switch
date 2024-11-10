
#> switch:maps/survival/old_japan_apocalypse/teleport_players
#
# @within	switch:maps/survival/old_japan_apocalypse/main
#

data modify entity @s Pos set value [129041.5d, 108.5d, 129043.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/old_japan_apocalypse/spread_players
scoreboard players reset #do_spreadplayers switch.data

