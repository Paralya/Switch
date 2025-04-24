
#> switch:cinematic/launch
#
# @within	switch:cinematic/launch {x:19.5, y:82.5, z:23.5, pitch:30, yaw:-15, time:60, with:{particle:1,interpolation:1}}
#

## /execute as @s positioned 0 69 0 rotated -55 10 run function switch:cinematic/launch {x:19.5, y:82.5, z:23.5, pitch:30, yaw:-15, time:60, with:{particle:1,interpolation:1}}
# TODO: Add rotation
# Pos 1 = current position
# Pos 2 = target position ($(x) $(y) $(z))

# Tag the player and remember it's id
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp

## Get the arguments
# Get the target position as double type
$data modify storage switch:temp temp set value [$(x),$(y),$(z)]
data modify storage switch:temp target_position set value [0.0d, 0.0d, 0.0d]
execute store result storage switch:temp target_position[0] double 0.001 run data get storage switch:temp temp[0] 1000
execute store result storage switch:temp target_position[1] double 0.001 run data get storage switch:temp temp[1] 1000
execute store result storage switch:temp target_position[2] double 0.001 run data get storage switch:temp temp[2] 1000

# Get the target rotation as float type
$data modify storage switch:temp temp set value [$(pitch),$(yaw)]
data modify storage switch:temp target_rotation set value [0.0f, 0.0f]
execute store result storage switch:temp target_rotation[0] float 0.001 run data get storage switch:temp temp[0] 1000
execute store result storage switch:temp target_rotation[1] float 0.001 run data get storage switch:temp temp[1] 1000

# Remember the additional arguments
$data modify storage switch:temp with set value $(with)
execute unless data storage switch:temp with.interpolation run data modify storage switch:temp with.interpolation set value 1
execute store result score #cinematic_interpolation switch.data run data get storage switch:temp with.interpolation

# Get the time as int type
$scoreboard players set #cinematic_time switch.data $(time)

# Get the current position and rotation
tp @s ~ ~ ~ ~ ~
data modify storage switch:temp current_position set from entity @s Pos
data modify storage switch:temp current_rotation set from entity @s Rotation


## Summon the entity that will control the player
execute summon item_display run function switch:cinematic/setup_entity

# Remove the tag
tag @s remove switch.temp

