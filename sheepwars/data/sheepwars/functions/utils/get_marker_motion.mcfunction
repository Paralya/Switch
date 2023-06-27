
#> sheepwars:utils/get_marker_motion
#
# @within			sheepwars:utils/launch_entity_in_direction
# @executed			as & at a non-player entity (sheep, etc.)
#
# @input storage	sheepwars:main Rotation : 2D rotation of the entity
# @output storage	sheepwars:main Motion : 3D motion of the entity (Position of the marker)
#
# @description		Use this marker to fill the "Motion" storage with the position of the marker
#

# Apply rotation to the entity
data modify entity @s Rotation set from storage sheepwars:main Rotation

# Teleport ahead
execute at @s run tp @s ^ ^ ^100

# Fill the "Motion" storage with the position of the entity
data modify storage sheepwars:main Motion set from entity @s Pos

# Kill the entity
kill @s

