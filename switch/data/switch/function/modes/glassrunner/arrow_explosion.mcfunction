

function switch:modes/glassrunner/destroy_glass_around

summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:1b,Invulnerable:1b}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:1,ignited:1b,Invulnerable:1b}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:2,ignited:1b,Invulnerable:1b}
kill @s