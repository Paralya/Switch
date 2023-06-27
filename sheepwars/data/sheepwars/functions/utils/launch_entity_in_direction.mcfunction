
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

# Remove "new" tag
tag @s remove sheepwars.new

# Apply rotation to the entity
data modify entity @s Rotation set from storage sheepwars:main Rotation

# Store the launcher's UUID
data merge entity @s {ArmorItems:[{id:"minecraft:stone",Count:1b},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
data modify entity @s ArmorItems[0].tag.UUID set from storage sheepwars:main UUID

## Launch the entity
# Get the motion of the entity by summoning a temporary marker
execute at @s positioned 0 0 0 summon marker at @s run function sheepwars:utils/get_marker_motion

# Apply the motion to the entity
execute store result entity @s Motion[0] double 0.03 run data get storage sheepwars:main Motion[0]
execute store result entity @s Motion[1] double 0.03 run data get storage sheepwars:main Motion[1]
execute store result entity @s Motion[2] double 0.03 run data get storage sheepwars:main Motion[2]

