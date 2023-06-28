
#> sheepwars:utils/launch_entity_in_direction
#
# @within			sheepwars:sheeps/summon/*
# @executed			as & at a non-player entity (sheep, etc.)
#
# @input storage	sheepwars:main Rotation : 2D rotation of the entity
# @input storage	sheepwars:main UUID : UUID of the player who launched the entity
#
# @description		Handles the launch of an entity in a direction, remove "new" tag and store launcher's UUID.
#

# Remove the "new" tag and store the launcher's UUID
function sheepwars:utils/new_sheep

## Launch the entity
# Get the motion of the entity by summoning a temporary marker
execute at @s positioned 0 0 0 summon marker at @s run function sheepwars:utils/get_marker_motion

# Apply the motion to the entity
execute store result entity @s Motion[0] double 0.03 run data get storage sheepwars:main Motion[0]
execute store result entity @s Motion[1] double 0.03 run data get storage sheepwars:main Motion[1]
execute store result entity @s Motion[2] double 0.03 run data get storage sheepwars:main Motion[2]

