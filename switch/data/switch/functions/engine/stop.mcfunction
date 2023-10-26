
execute unless score #state switch.data matches 3 unless score #disable switch.data matches 1 run time set 18000
execute unless score #state switch.data matches 3 unless score #disable switch.data matches 1 run tp @a 0 69 0
scoreboard players set #state switch.data 0
scoreboard players set #cut_clean switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard players set #set_spec switch.data 1
function switch:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list switch.stats.wins
execute unless score #is_adventure switch.data matches 1 run function switch:maps/regenerate_map
scoreboard players reset #is_adventure switch.data

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
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}

