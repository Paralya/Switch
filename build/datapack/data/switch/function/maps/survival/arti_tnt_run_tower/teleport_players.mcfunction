
#> switch:maps/survival/arti_tnt_run_tower/teleport_players
#
# @within	switch:maps/survival/arti_tnt_run_tower/main
#

data modify entity @s Pos set value [152033.5d, 145.5d, 152057.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/arti_tnt_run_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

