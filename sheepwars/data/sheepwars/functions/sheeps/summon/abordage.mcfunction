
#> sheepwars:sheeps/summon/abordage
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "abordage" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ^ ^1 ^1 {Tags:["sheepwars.sheep","sheepwars.abordage","sheepwars.new","sheepwars.to_ride"],Color:0,DeathLootTable:"none"}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

# Ride the sheep and remove the "to_ride" tag
ride @s dismount
ride @s mount @e[tag=sheepwars.to_ride,limit=1]
tag @e[tag=sheepwars.to_ride] remove sheepwars.to_ride

