
#> switch:player/jump_timer/stopwatch_start
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/start with storage switch:temp jt_sw
#
# @args		pid (unknown)
#

$stopwatch create switch:jump_timer/$(pid)
$stopwatch restart switch:jump_timer/$(pid)

