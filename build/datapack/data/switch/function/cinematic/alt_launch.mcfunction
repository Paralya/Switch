
#> switch:cinematic/alt_launch
#
# @executed	as the player & at current position
#
# @within	???
#
# @args		time (unknown)
#			target (unknown)
#			with (unknown)
#
# @input macro		target : string - target selector for position and rotation source
# @input macro		time : int - time in ticks
# @input macro		with : compound - additional arguments (optional)
# 					- yaw : float - yaw rotation (will override target rotation)
# 					- pitch : float - pitch rotation (will override target rotation)
# 					- go_side : float - how far to go side (0 = don't go side)
# 					- add_y : float - additional y position (default: 20.0)
# 					- particle : int - particle effect (0 = none, 1 = glow)
# 					- interpolation : int - teleport duration (default: 2)
# 					- delay : int - delay in ticks before starting (default: 0)
# 
# @description		Launch a cinematic that moves the player to the position and rotation of a target entity
# 
# @example			/execute as @s positioned 0 69 0 rotated -55 10 run function switch:cinematic/alt_launch {target:"@s",time:60,with:{go_side:1,add_y:20.0,particle:1,interpolation:2,delay:20}}
#

## Get the arguments
# Get the time as int type
$scoreboard players set #cinematic_time switch.data $(time)

# Get the target position and rotation from specified entity (and increment height by 1.6)
$data modify storage switch:temp target_position set from entity $(target) Pos
execute store result score #temp switch.data run data get storage switch:temp target_position[1] 1000
scoreboard players add #temp switch.data 1600
execute store result storage switch:temp target_position[1] double 0.001 run scoreboard players get #temp switch.data
$data modify storage switch:temp target_rotation set from entity $(target) Rotation

## Remember the additional arguments
$data modify storage switch:temp with set value $(with)

# Call common launch function
function switch:cinematic/common_launch

