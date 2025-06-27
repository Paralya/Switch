
#> switch:maps/survival/fireblast_cookie/teleport_players
#
# @within	switch:maps/survival/fireblast_cookie/main
#

data modify entity @s Pos set value [164022.5d, 154.5d, 164035.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/fireblast_cookie/spread_players
scoreboard players reset #do_spreadplayers switch.data

