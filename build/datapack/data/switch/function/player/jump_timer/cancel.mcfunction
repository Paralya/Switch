
#> switch:player/jump_timer/cancel
#
# @within	switch:cinematic/common_launch
#			switch:player/practice/teleport
#			switch:player/jump_timer/tick
#			switch:player/jump_timer/finish
#			switch:player/trigger/detach/basic_stuff
#

scoreboard players set @s switch.jump_timer_id 0
scoreboard players set @s switch.jump_timer 0
tag @s remove switch.jump_timing
execute store result storage switch:temp jt_sw.pid int 1 run scoreboard players get @s switch.id
function switch:player/jump_timer/stopwatch_remove with storage switch:temp jt_sw

