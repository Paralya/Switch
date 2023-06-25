
#> sheepwars:sheeps/incendiaire/summon
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "incendiaire" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ~ ~1 ~ {Tags:["sheepwars.incendiaire","sheepwars.sheep","sheepwars.in_air","sheepwars.new"],Color:1,DeathLootTable:"sheepwars:i/incendiaire"}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

