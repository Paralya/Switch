
#> switch:modes/glassrunner/shop/apocalypse_player
#
# @within	switch:modes/glassrunner/tick_player
#

# effect give @s minecraft:levitation 1 80 true


fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace #switch:glassrunner/glass

execute if score @s switch.glassrunner.apocalypse matches ..5 align xyz run summon creeper ~ ~3 ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}

scoreboard players remove @s switch.glassrunner.apocalypse 1

