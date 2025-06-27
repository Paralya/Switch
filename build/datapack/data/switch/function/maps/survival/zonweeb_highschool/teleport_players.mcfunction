
#> switch:maps/survival/zonweeb_highschool/teleport_players
#
# @within	switch:maps/survival/zonweeb_highschool/main
#

data modify entity @s Pos set value [53115.5d, 109.5d, 53116.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/zonweeb_highschool/spread_players
scoreboard players reset #do_spreadplayers switch.data

