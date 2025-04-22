
# Increment the number of cinematic entities and add convention tags
scoreboard players add #cinematic_entities switch.data 1
tag @s add smithed.entity
tag @s add smithed.strict
tag @s add global.ignore.kill
tag @s add global.ignore

## Stream Bezier
# Prepare storages for Stream Bezier
data modify storage switch:temp points set value []
data modify storage bs:in spline.stream_bezier set value {points:[],step:1,run:"data modify storage switch:temp points append from storage bs:lambda spline.point"}

# Get the current position (for the first point)
data modify storage switch:temp current_position set from entity @s Pos
data modify storage bs:in spline.stream_bezier.points append from storage switch:temp current_position

# Get a position between (with a little offset)
function switch:cinematic/get_position_between/main

# Get the target position
data modify storage bs:in spline.stream_bezier.points append from storage switch:temp target_position

# Compute the step depending on the time (1 / total time, We keep 6 decimals)
scoreboard players set #cinematic_step switch.data 1000000
scoreboard players operation #cinematic_step switch.data /= #cinematic_time switch.data
execute store result storage bs:in spline.stream_bezier.step double 0.000001

## Get all the points
# data modify storage bs:in spline.stream_bezier set value {points:[[0,0],[1,2],[2,-1],[3,1]],step:0.1,run:'tellraw @a {"storage":"bs:lambda","nbt":"spline.point"}'}
# function #bs.spline:stream_bezier

