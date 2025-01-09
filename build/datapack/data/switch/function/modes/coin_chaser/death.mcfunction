
#> switch:modes/coin_chaser/death
#
# @within	switch:modes/coin_chaser/process_end
#

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

