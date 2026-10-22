
#> switch:modes/shoot_da_sheep/summon_sheep
#
# @executed	as @a[predicate=switch:chance/0.5] & in switch:game
#
# @within	switch:modes/shoot_da_sheep/second [ as @a[predicate=switch:chance/0.5] & in switch:game ]
#

# Summon at the marker location
execute unless score #process_end switch.data matches 1 positioned 10020 2048 6020 summon sheep run function switch:modes/shoot_da_sheep/on_new_sheep

