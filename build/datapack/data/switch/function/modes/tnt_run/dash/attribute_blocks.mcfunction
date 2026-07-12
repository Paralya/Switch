
#> switch:modes/tnt_run/dash/attribute_blocks
#
# @executed	as @e[tag=switch.tnt_run,scores={switch.data=8..}] & at @s
#
# @within	switch:modes/tnt_run/destroy_block
#

scoreboard players operation #player_id switch.id = @s switch.id
execute as @a[tag=!detached,predicate=switch:has_same_id] run scoreboard players operation @s switch.temp.blocks += #count switch.data

