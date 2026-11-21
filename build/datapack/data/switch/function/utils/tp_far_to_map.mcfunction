
#> switch:utils/tp_far_to_map
#
# @within	switch:modes/creeper_apocalypse/process_end
#

execute at @n[type=marker,tag=switch.selected_map] run tag @a[tag=!detached,distance=..100] add switch.temp.near_map
execute at @n[type=marker,tag=switch.selected_map] as @a[tag=!detached,tag=!switch.temp.near_map] run tp @s ~ ~ ~ ~ ~
tag @a remove switch.temp.near_map

