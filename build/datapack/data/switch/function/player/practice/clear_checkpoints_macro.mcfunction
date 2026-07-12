
#> switch:player/practice/clear_checkpoints_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/clear_checkpoints with storage switch:temp practice_input
#
# @args		id (int)
#

$data remove storage switch:practice players[{id:$(id)}]

