
execute unless score #state switch.data matches 3 unless score #disable switch.data matches 1 run time set 18000
execute unless score #state switch.data matches 3 unless score #disable switch.data matches 1 run tp @a 0 69 0
scoreboard players set #state switch.data 0
scoreboard players set #cut_clean switch.data 0
scoreboard players set #process_end switch.data 0

execute unless score #disable switch.data matches 1 run clear @a[tag=!convention.debug]
effect clear @a
gamemode spectator @a[tag=!convention.debug]
xp set @a 0 points
xp set @a 0 levels
kill @e[type=marker,tag=switch.selected_map]
worldborder set 59999968
worldborder center 0 0
spawnpoint @a 0 69 0
scoreboard objectives setdisplay list switch.stats.victories
execute unless score #is_adventure switch.data matches 1 run function switch:maps/regenerate_map
scoreboard players reset #is_adventure switch.data
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.max_health base set 20.0

scoreboard players reset #disable switch.data
scoreboard players reset * switch.alive
gamerule maxCommandChainLength 1048576
gamerule sendCommandFeedback true
gamerule mobGriefing false
gamerule showDeathMessages true
gamerule naturalRegeneration true
gamerule keepInventory false
gamerule fallDamage true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule doTraderSpawning false


function #switch:signals/stop

