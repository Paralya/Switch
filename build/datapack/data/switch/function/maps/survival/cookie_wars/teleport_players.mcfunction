
#> switch:maps/survival/cookie_wars/teleport_players
#
# @within	switch:maps/survival/cookie_wars/main
#

data modify entity @s Pos set value [49148.12.5d, 141.36.5d, 49129.67.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cookie_wars/spread_players
scoreboard players reset #do_spreadplayers switch.data

