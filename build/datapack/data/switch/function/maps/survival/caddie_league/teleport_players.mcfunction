
#> switch:maps/survival/caddie_league/teleport_players
#
# @within	switch:maps/survival/caddie_league/main
#

data modify entity @s Pos set value [41063.5d, 123.5d, 41061.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/caddie_league/spread_players
scoreboard players reset #do_spreadplayers switch.data

