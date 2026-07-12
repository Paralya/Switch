
#> switch:player/practice/place_checkpoint_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/place_checkpoint with storage switch:temp practice_input
#
# @args		id (int)
#

$execute unless data storage switch:practice players[{id:$(id)}] run data modify storage switch:practice players append value {id:$(id),checkpoints:[]}
$data modify storage switch:practice players[{id:$(id)}].checkpoints append from storage switch:temp practice_cp
$execute if data storage switch:practice players[{id:$(id)}].checkpoints[5] run data remove storage switch:practice players[{id:$(id)}].checkpoints[0]

