
tellraw @a[tag=convention.debug] {"text":"[Loaded Switch v1.0.0]","italic":false,"color":"green"}
execute unless entity @a run schedule function switch:post_load 1t

execute if score #engine_state switch.data matches 2..3 run return 1

gamerule maxCommandChainLength 2147483647
gamerule sendCommandFeedback true
gamerule mobGriefing false
gamerule showDeathMessages true
gamerule naturalRegeneration true
gamerule keepInventory false
gamerule fallDamage true
gamerule fireDamage true
gamerule drowningDamage true
gamerule freezeDamage true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true
gamerule doImmediateRespawn true
gamerule announceAdvancements true
gamerule doTraderSpawning false

