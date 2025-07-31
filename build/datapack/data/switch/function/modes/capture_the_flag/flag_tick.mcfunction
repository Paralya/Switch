
#> switch:modes/capture_the_flag/flag_tick
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~
#
# @within	switch:modes/capture_the_flag/tick [ as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~ ]
#

# If the flag is free and a player is nearby, the flag is picked up
execute if entity @s[tag=switch.free,tag=switch.blue_flag] if entity @p[team=switch.temp.red,distance=..1] run function switch:modes/capture_the_flag/flag_pickup
execute if entity @s[tag=switch.free,tag=switch.red_flag] if entity @p[team=switch.temp.blue,distance=..1] run function switch:modes/capture_the_flag/flag_pickup

# If not free, check if the player holding the flag is nearby, if not, drop the flag
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] unless entity @p[tag=switch.has_blue_flag,distance=..5] run function switch:modes/capture_the_flag/flag_drop
execute if entity @s[tag=!switch.free,tag=switch.red_flag] unless entity @p[tag=switch.has_red_flag,distance=..5] run function switch:modes/capture_the_flag/flag_drop

# If not free, teleport to the player holding the flag
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] on vehicle at @p[tag=switch.has_blue_flag] run tp @s ~ ~2 ~ ~180 0
execute if entity @s[tag=!switch.free,tag=switch.red_flag] on vehicle at @p[tag=switch.has_red_flag] run tp @s ~ ~2 ~ ~180 0

# Get rotation and motion
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] on vehicle run data modify entity @s Motion set from entity @p[tag=switch.has_blue_flag] Motion
execute if entity @s[tag=!switch.free,tag=switch.red_flag] on vehicle run data modify entity @s Motion set from entity @p[tag=switch.has_red_flag] Motion
execute on vehicle run data modify storage switch:main Rotation set from entity @s Rotation[0]
data modify entity @s Rotation[0] set from storage switch:main Rotation

# If the flag is out of bounds, it is returned
execute store result score #y switch.data on vehicle run data get entity @s Pos[1]
execute if score #y switch.data matches ..50 run function switch:modes/capture_the_flag/flag_reset

# If the flag is free, not at original pos, and a player of the same team is nearby, it is returned
execute if entity @s[tag=switch.free,tag=!switch.original_pos,tag=switch.blue_flag] if entity @p[team=switch.temp.blue,distance=..1] run function switch:modes/capture_the_flag/flag_reset
execute if entity @s[tag=switch.free,tag=!switch.original_pos,tag=switch.red_flag] if entity @p[team=switch.temp.red,distance=..1] run function switch:modes/capture_the_flag/flag_reset

# Score a point
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] positioned ~ ~-2 ~ if entity @e[tag=switch.original_pos,tag=switch.red_flag,distance=..1] run function switch:modes/capture_the_flag/score_point
execute if entity @s[tag=!switch.free,tag=switch.red_flag] positioned ~ ~-2 ~ if entity @e[tag=switch.original_pos,tag=switch.blue_flag,distance=..1] run function switch:modes/capture_the_flag/score_point

# Kill every tnt and remove blocks in range
execute if entity @s[tag=switch.free] run kill @e[type=tnt,distance=..5]
execute if entity @s[tag=switch.free] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace #wool

