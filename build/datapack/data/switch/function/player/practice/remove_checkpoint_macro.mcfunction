
#> switch:player/practice/remove_checkpoint_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/remove_checkpoint with storage switch:temp practice_input
#
# @args		id (unknown)
#

$data remove storage switch:practice players[{id:$(id)}].checkpoints[-1]

