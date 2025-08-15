
#> switch:modes/race/out_of_map
#
# @executed	at @s
#
# @within	switch:modes/race/tm_blocks/tick
#

tag @s add switch.temp
execute as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] at @s run function switch:modes/race/checkpoints/forced_respawn

