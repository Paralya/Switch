
#> switch:maps/survival/la_juste_recette/teleport_players
#
# @within	switch:maps/survival/la_juste_recette/main
#

data modify entity @s Pos set value [57029.5d, 122.5d, 57013.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/la_juste_recette/spread_players
scoreboard players reset #do_spreadplayers switch.data

