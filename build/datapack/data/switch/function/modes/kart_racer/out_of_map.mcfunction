
#> switch:modes/kart_racer/out_of_map
#
# @executed	at @s
#
# @within	switch:modes/kart_racer/blocks/tick
#

tag @s add switch.temp
execute as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] at @s run function switch:modes/kart_racer/checkpoints/forced_respawn

