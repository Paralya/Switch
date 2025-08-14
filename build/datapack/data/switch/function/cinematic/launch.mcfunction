
#> switch:cinematic/launch
#
# @executed	in switch:game & positioned 44.38 127.17 260.0 & rotated 151.06 28.47
#
# @within	switch:cinematic/intro_spread/cinematic_start with storage switch:temp player_cinematic
#			switch:player/tick_detach {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:0.5,y:75.51,z:-23.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:9.5,y:74.51,z:23.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-14.5,y:73.51,z:9.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-34.5,y:73.1,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-8.5,y:73.1,z:35.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:9.5,y:73.1,z:47.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-46.5,y:76.1,z:10.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-84.5,y:70.1,z:0.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:51.5,y:74.6,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:9.5,y:74.6,z:111.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
#			switch:player/tick_detach {x:-11.5,y:74.1,z:91.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
#			switch:player/trigger/detach/basic_stuff {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,particle:1,interpolation:2}}
#
# @input macro		x : float - target x position
# @input macro		y : float - target y position
# @input macro		z : float - target z position
# @input macro		time : int - time in ticks
# @input macro		with : compound - additional arguments (optional)
# 					- yaw : float - yaw rotation
# 					- pitch : float - pitch rotation
# 					- go_side : float - how far to go side (0 = don't go side)
# 					- add_y : float - additional y position (default: 20.0)
# 					- particle : int - particle effect (0 = none, 1 = glow)
# 					- interpolation : int - teleport duration (default: 2)
# 					- delay : int - delay in ticks before starting (default: 0)
# 
# @description		Launch a cinematic that moves the player to specified coordinates with optional settings
# 
# @example			/execute as @s positioned 0 69 0 rotated -55 10 run function switch:cinematic/launch {x:19.5,y:82.5,z:23.5,time:60,with:{yaw:30,pitch:-15,go_side:1,add_y:20.0,particle:1,interpolation:2,delay:20}}
#

## Get the arguments
# Get the target position as double type (and increment height by 1.6)
$data modify storage switch:temp temp set value [$(x),$(y),$(z)]
data modify storage switch:temp target_position set value [0.0d, 0.0d, 0.0d]
execute store result storage switch:temp target_position[0] double 0.001 run data get storage switch:temp temp[0] 1000
execute store result score #temp switch.data run data get storage switch:temp temp[1] 1000
scoreboard players add #temp switch.data 1600
execute store result storage switch:temp target_position[1] double 0.001 run scoreboard players get #temp switch.data
execute store result storage switch:temp target_position[2] double 0.001 run data get storage switch:temp temp[2] 1000

# Get the time as int type
$scoreboard players set #cinematic_time switch.data $(time)

# Set target rotation from current rotation (will be overridden if yaw/pitch provided in with)
data modify storage switch:temp target_rotation set from entity @s Rotation

## Remember the additional arguments
$data modify storage switch:temp with set value $(with)

# Call common launch function
function switch:cinematic/common_launch

