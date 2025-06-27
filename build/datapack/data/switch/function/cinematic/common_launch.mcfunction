
#> switch:cinematic/common_launch
#
# @within	switch:cinematic/alt_launch
#			switch:cinematic/launch
#

# Common launch function for cinematic system
# This function contains shared logic between launch and alt_launch
# Expects the following to be set before calling:
# - storage switch:temp target_position (as double array)
# - storage switch:temp target_rotation (as float array)
# - score #cinematic_time switch.data (as int)
# - storage switch:temp with (as compound)

# Tag the player and remember it's id
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp

# Get the current position (y + 1.6) and rotation
tp @s ~ ~1.6 ~ ~ ~
data modify storage switch:temp current_position set from entity @s Pos
data modify storage switch:temp current_rotation set from entity @s Rotation

## Remember the additional arguments
execute unless data storage switch:temp with.interpolation run data modify storage switch:temp with.interpolation set value 1
execute store result score #cinematic_interpolation switch.data run data get storage switch:temp with.interpolation
execute if data storage switch:temp with.pitch if data storage switch:temp with.yaw run function switch:cinematic/get_rotation_arguments with storage switch:temp with
execute unless data storage switch:temp with.go_side run data modify storage switch:temp with.go_side set value 0
execute unless data storage switch:temp with.add_y run data modify storage switch:temp with.add_y set value 20.0
execute unless data storage switch:temp with.delay run data modify storage switch:temp with.delay set value 0

## Summon the entity that will control the player
execute summon item_display run function switch:cinematic/setup_entity

# Remove the tag
tag @s remove switch.temp

