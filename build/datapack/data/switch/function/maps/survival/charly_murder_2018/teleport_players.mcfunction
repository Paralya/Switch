
#> switch:maps/survival/charly_murder_2018/teleport_players
#
# @within	switch:maps/survival/charly_murder_2018/main
#

data modify entity @s Pos set value [136024.5d, 115.5d, 136029.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/charly_murder_2018/spread_players
scoreboard players reset #do_spreadplayers switch.data

