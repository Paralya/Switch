
#> switch:cinematic/intro_spread/cinematic_start
#
# @executed	in switch:game & positioned 44.38 127.17 260.0 & rotated 151.06 28.47
#
# @within	switch:cinematic/intro_spread/start with storage switch:temp intro
#

# Spread player on the map
$function $(target_function)

# Get all arguments for the cinematic
data modify storage switch:temp player_cinematic set value {}
data modify storage switch:temp player_cinematic.with set from storage switch:temp intro.with
data modify storage switch:temp player_cinematic.x set from entity @s Pos[0]
data modify storage switch:temp player_cinematic.y set from entity @s Pos[1]
data modify storage switch:temp player_cinematic.z set from entity @s Pos[2]
data modify storage switch:temp player_cinematic.time set from storage switch:temp intro.cinematic_time
execute unless data storage switch:temp player_cinematic.with.yaw run data modify storage switch:temp player_cinematic.with.yaw set from entity @s Rotation[0]
execute unless data storage switch:temp player_cinematic.with.pitch run data modify storage switch:temp player_cinematic.with.pitch set from entity @s Rotation[1]
execute unless data storage switch:temp player_cinematic.with.interpolation run data modify storage switch:temp player_cinematic.with.interpolation set value 3
data modify storage switch:temp player_cinematic.with.delay set from storage switch:temp intro.display_time

# Launch the cinematic (at the view coordinates, don't use at @s because it will use the current position)
function switch:cinematic/launch with storage switch:temp player_cinematic

