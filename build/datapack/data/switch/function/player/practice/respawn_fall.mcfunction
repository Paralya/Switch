
#> switch:player/practice/respawn_fall
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

function switch:player/practice/get_last_checkpoint
execute if data storage switch:temp practice_cp.x run function switch:player/practice/teleport

