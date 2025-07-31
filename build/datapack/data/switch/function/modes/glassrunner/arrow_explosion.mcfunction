
#> switch:modes/glassrunner/arrow_explosion
#
# @executed	at @s
#
# @within	switch:modes/glassrunner/tick [ at @s ]
#

function switch:modes/glassrunner/destroy_glass_around

summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:1,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:2,ignited:true,Invulnerable:true}
kill @s

