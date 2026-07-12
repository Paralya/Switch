
#> switch:player/practice/get_last_checkpoint_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/get_last_checkpoint with storage switch:temp practice_input
#
# @args		id (int)
#

$execute if data storage switch:practice players[{id:$(id)}].checkpoints[-1] run data modify storage switch:temp practice_cp set from storage switch:practice players[{id:$(id)}].checkpoints[-1]

