
#> sheepwars:sheeps/summon/soutien
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "soutien" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ~ ~1 ~ {Tags:["sheepwars.sheep","sheepwars.soutien","sheepwars.in_air","sheepwars.new"],Color:6}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

