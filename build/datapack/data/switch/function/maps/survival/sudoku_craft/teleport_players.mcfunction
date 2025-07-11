
#> switch:maps/survival/sudoku_craft/teleport_players
#
# @within	switch:maps/survival/sudoku_craft/main
#

data modify entity @s Pos set value [55018.5d, 154.5d, 55028.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sudoku_craft/spread_players
scoreboard players reset #do_spreadplayers switch.data

