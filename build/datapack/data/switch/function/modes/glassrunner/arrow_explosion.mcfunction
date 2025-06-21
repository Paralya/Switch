
#> switch:modes/glassrunner/arrow_explosion
#
# @within	switch:modes/glassrunner/tick
#

function switch:modes/glassrunner/destroy_glass_around

summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:1,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:2,ignited:true,Invulnerable:true}
kill @s

