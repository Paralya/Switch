
#> sheepwars:sheeps/final/explosif
#
# @within			sheepwars:sheeps/final_action
# @executed			as & at the sheep
#
# @description		Explode the sheep with a normal explosion
#

# Particles and sound
particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 10
playsound entity.generic.explode block @a[distance=..42]

## Tag the player that launched the sheep
# Get player UUID
data modify storage sheepwars:main UUID set from entity @s ArmorItems[0].tag.UUID
# Search for the player with this UUID
execute as @a run function sheepwars:utils/get_player_from_uuid

## Damage nearby entities
# Damage nearby entities that have a brain
damage @e[type=!player,tag=!sheepwars.sheep,distance=..1,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 28 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @e[type=!player,tag=!sheepwars.sheep,distance=..2,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 20 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @e[type=!player,tag=!sheepwars.sheep,distance=..3,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 12 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @e[type=!player,tag=!sheepwars.sheep,distance=..4,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 8 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @e[type=!player,tag=!sheepwars.sheep,distance=..5,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 4 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @e[type=!player,tag=!sheepwars.sheep,distance=..6,nbt={Brain:{}},nbt=!{Invulnerable:1b}] 2 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]

# Damage nearby players
tag @a[gamemode=!creative,gamemode=!spectator,distance=..6] add sheepwars.damaged
damage @a[gamemode=!creative,gamemode=!spectator,distance=..1] 28 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @a[gamemode=!creative,gamemode=!spectator,distance=..2] 20 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @a[gamemode=!creative,gamemode=!spectator,distance=..3] 12 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @a[gamemode=!creative,gamemode=!spectator,distance=..4] 8 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @a[gamemode=!creative,gamemode=!spectator,distance=..5] 4 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]
damage @a[gamemode=!creative,gamemode=!spectator,distance=..6] 2 explosion by @p[tag=sheepwars.owner] from @p[tag=sheepwars.owner]

# For each player, check if the damage killed him
execute as @a[tag=sheepwars.damaged] run function sheepwars:utils/player_damaged

## Break blocks
# TODO


# Remove the tag from the owner
tag @a[tag=sheepwars.owner] remove sheepwars.owner


