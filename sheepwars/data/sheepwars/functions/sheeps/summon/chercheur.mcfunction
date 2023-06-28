
#> sheepwars:sheeps/summon/chercheur
#
# @within			sheepwars:right_click/all
# @executed			as & at the player
#
# @description		Summons a sheep with tag "chercheur" and launches it in the direction the player is looking at.
#

# Summon the sheep
summon sheep ^ ^1 ^1 {Tags:["sheepwars.sheep","sheepwars.explode","sheepwars.chercheur","sheepwars.new"],Color:5b,DeathLootTable:"sheepwars:i/chercheur",Passengers:[{id:"minecraft:husk",Silent:1b,Invulnerable:1b,DeathLootTable:"none",IsBaby:1b,Tags:["sheepwars.chercheur_rider"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.0d}]}]}

# Store player's rotation and UUID
data modify storage sheepwars:main Rotation set from entity @s Rotation

# Execute as the sheep the function that will launch it
execute as @e[tag=sheepwars.new] at @s run function sheepwars:utils/launch_entity_in_direction

