
function switch:modes/glassrunner/destroy_glass_around

execute positioned ~ ~-3 ~ run function switch:modes/glassrunner/destroy_glass_around
execute positioned ~ ~3 ~ run function switch:modes/glassrunner/destroy_glass_around

execute align xyz run summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:20b,Fuse:0,ignited:1b,Invulnerable:1b}


