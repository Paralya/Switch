
#> sheepwars:sheeps/summon/sismique
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "sismique" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ^ ^1 ^1 {Tags:["sheepwars.sheep","sheepwars.sismique","sheepwars.new"],Color:12,DeathLootTable:"sheepwars:i/sismique"}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

