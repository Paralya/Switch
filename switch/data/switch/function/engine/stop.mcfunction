
execute unless score #engine_state switch.data matches 3 unless score #disable switch.data matches 1 run tp @a[tag=!detached] 0 69 0
scoreboard players set #engine_state switch.data 0
scoreboard players set #cut_clean switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard players set #set_spec switch.data 1
function switch:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list switch.stats.wins
execute unless score #is_adventure switch.data matches 1 unless score #already_regenerated switch.data matches 1 run function switch:maps/regenerate_map
scoreboard players reset #is_adventure switch.data

scoreboard objectives setdisplay sidebar
scoreboard players reset #disable switch.data
scoreboard players reset * switch.alive
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

execute in switch:game run gamerule maxCommandChainLength 2147483647
execute in switch:game run gamerule sendCommandFeedback true
execute in switch:game run gamerule mobGriefing false
execute in switch:game run gamerule showDeathMessages true
execute in switch:game run gamerule naturalRegeneration true
execute in switch:game run gamerule keepInventory false
execute in switch:game run gamerule fallDamage true
execute in switch:game run gamerule fireDamage true
execute in switch:game run gamerule drowningDamage true
execute in switch:game run gamerule freezeDamage true
execute in switch:game run gamerule doDaylightCycle false
execute in switch:game run gamerule doWeatherCycle false
execute in switch:game run gamerule doMobSpawning false
execute in switch:game run gamerule doFireTick false
execute in switch:game run gamerule doTileDrops true
execute in switch:game run gamerule doEntityDrops true
execute in switch:game run gamerule doMobLoot true
execute in switch:game run gamerule doImmediateRespawn true
execute in switch:game run gamerule announceAdvancements true
execute in switch:game run gamerule doTraderSpawning false

function switch:engine/signals/stop
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}

# Update the stats of the minigame
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input

