
#> sheepwars:utils/launch_entity_in_direction
#
# @within			sheepwars:sheeps/*/summon
# @executed			as & at a non-player entity (sheep, etc.)
#
# @input storage	sheepwars:main Rotation : 2D rotation of the entity
#
# @description		Handles the launch of an entity in a direction and remove "new" tag
#

# Remove "new" tag
tag @s remove sheepwars.new

# Apply rotation to the entity
data modify entity @s Rotation set from storage sheepwars:main Rotation

## Launch the entity
# Get the motion of the entity by summoning a temporary marker
execute positioned 0 0 0 summon marker at @s run function sheepwars:utils/get_marker_motion

# Apply the motion to the entity
data modify entity @s Motion set from storage sheepwars:main Motion


