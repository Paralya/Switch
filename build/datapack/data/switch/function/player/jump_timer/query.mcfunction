
#> switch:player/jump_timer/query
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/tick
#			switch:player/jump_timer/finish
#

execute store result storage switch:temp jt_sw.pid int 1 run scoreboard players get @s switch.id
function switch:player/jump_timer/stopwatch_query with storage switch:temp jt_sw

