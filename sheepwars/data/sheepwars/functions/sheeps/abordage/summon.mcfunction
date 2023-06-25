
#> sheepwars:sheeps/abordage/summon
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "abordage" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ~ ~1 ~ {Tags:["sheepwars.abordage","sheepwars.sheep","sheepwars.in_air","sheepwars.new"],Color:0,DeathLootTable:"sheepwars:i/abordage"}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

