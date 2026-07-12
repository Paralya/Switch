
#> switch:player/jump_timer/start
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/tick {id:1}
#			switch:player/jump_timer/tick {id:2}
#			switch:player/jump_timer/tick {id:3}
#			switch:player/jump_timer/tick {id:4}
#			switch:player/jump_timer/tick {id:5}
#			switch:player/jump_timer/tick {id:6}
#			switch:player/jump_timer/tick {id:7}
#			switch:player/jump_timer/tick {id:8}
#			switch:player/jump_timer/tick {id:9}
#			switch:player/jump_timer/tick {id:10}
#			switch:player/jump_timer/tick {id:11}
#			switch:player/jump_timer/tick {id:12}
#			switch:player/jump_timer/tick {id:13}
#
# @args		id (int)
#

$scoreboard players set @s switch.jump_timer_id $(id)
scoreboard players set @s switch.jump_timer 0
tag @s add switch.jump_timing

