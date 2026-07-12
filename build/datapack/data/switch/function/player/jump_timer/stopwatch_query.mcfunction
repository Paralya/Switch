
#> switch:player/jump_timer/stopwatch_query
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/query with storage switch:temp jt_sw
#
# @args		pid (unknown)
#

$execute store result score @s switch.jump_timer run stopwatch query switch:jump_timer/$(pid) 100

