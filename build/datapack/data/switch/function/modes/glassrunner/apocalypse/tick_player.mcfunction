
#> switch:modes/glassrunner/apocalypse/tick_player
#
# @within	switch:modes/glassrunner/apocalypse/tick
#

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #switch:glassrunner/glass

execute align xyz run summon creeper ~ ~2 ~ {DeathLootTable:"null",ExplosionRadius:10b,Fuse:0,ignited:true,Invulnerable:true}

