
#> switch:modes/shoot_da_sheep/summon_sheep
#
# @executed	as @a[predicate=switch:chance/0.5] & in switch:game
#
# @within	switch:modes/shoot_da_sheep/second [ as @a[predicate=switch:chance/0.5] & in switch:game ]
#

# Summon at the marker location
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] positioned ~ 2048 ~ summon sheep run function switch:modes/shoot_da_sheep/on_new_sheep

