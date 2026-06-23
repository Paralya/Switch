
#> switch:modes/pitch_creep/start
#
# @within	switch:modes/pitch_creep/calls/start
#

function switch:modes/_common/no_pvp_start

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {id:"pitch_creep", maps:["pitch_creep_1","octogone_nether_ice"]}

function switch:modes/pitch_creep/translations/start

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -10
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.shot minecraft.used:minecraft.bow
scoreboard players set @a[tag=!detached] switch.temp.shot 0

# Teleport on maps
scoreboard players set #count switch.data 0
execute if data storage switch:main {map:"pitch_creep_1"} as @a[tag=!detached,sort=random] run function switch:modes/pitch_creep/maps/pitch_creep_1
execute if data storage switch:main {map:"octogone_nether_ice"} as @a[tag=!detached,sort=random] run function switch:modes/pitch_creep/maps/octogone_nether_ice

