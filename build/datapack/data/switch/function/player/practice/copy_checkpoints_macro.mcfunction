
#> switch:player/practice/copy_checkpoints_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/show_particles with storage switch:temp practice_input
#
# @args		id (int)
#

$execute if data storage switch:practice players[{id:$(id)}] run data modify storage switch:temp practice_cps set from storage switch:practice players[{id:$(id)}].checkpoints

