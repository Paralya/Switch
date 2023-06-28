
#> sheepwars:sheeps/summon/soutien
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "soutien" and apply NBT changes to it
#

# Summon the sheep
summon sheep ^ ^1 ^1 {Tags:["sheepwars.sheep","sheepwars.soutien","sheepwars.new"],Color:6,DeathLootTable:"none"}

# Store player's rotation
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will apply NBT changes
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/new_sheep

