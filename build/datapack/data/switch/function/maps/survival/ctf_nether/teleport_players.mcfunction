
#> switch:maps/survival/ctf_nether/teleport_players
#
# @within	switch:maps/survival/ctf_nether/main
#

data modify entity @s Pos set value [149101.5d, 180.5d, 149175.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ctf_nether/spread_players
scoreboard players reset #do_spreadplayers switch.data

