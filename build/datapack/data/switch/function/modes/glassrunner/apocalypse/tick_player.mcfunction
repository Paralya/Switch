
#> switch:modes/glassrunner/apocalypse/tick_player
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:modes/glassrunner/apocalypse/tick [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #switch:glassrunner/glass

execute align xyz run summon creeper ~ ~2 ~ {DeathLootTable:"null",ExplosionRadius:10b,Fuse:0,ignited:true,Invulnerable:true}

