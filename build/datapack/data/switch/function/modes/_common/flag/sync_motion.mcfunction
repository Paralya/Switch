
#> switch:modes/_common/flag/sync_motion
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~
#
# @within	switch:modes/capture_the_flag/flag_tick
#			switch:modes/rush_the_flag/flag_tick
#

execute if entity @s[tag=!switch.free,tag=switch.blue_flag] on vehicle run data modify entity @s Motion set from entity @p[tag=switch.has_blue_flag] Motion
execute if entity @s[tag=!switch.free,tag=switch.red_flag] on vehicle run data modify entity @s Motion set from entity @p[tag=switch.has_red_flag] Motion
execute on vehicle run data modify storage switch:main Rotation set from entity @s Rotation[0]
data modify entity @s Rotation[0] set from storage switch:main Rotation

