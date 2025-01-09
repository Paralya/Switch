
team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

execute in minecraft:overworld run gamerule showDeathMessages false
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:overworld run gamerule keepInventory true
execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
function switch:utils/choose_map_for {id:"pitch_creep", maps:["pitch_creep_1","octogone_nether_ice"]}

function switch:translations/modes_pitch_creep_start

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -5
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.shot minecraft.used:minecraft.bow
scoreboard players set @a[tag=!detached] switch.temp.shot 0

# Teleport on maps
scoreboard players set #count switch.data 0
execute if data storage switch:main {map:"pitch_creep_1"} as @a[tag=!detached,sort=random] run function switch:modes/pitch_creep/maps/pitch_creep_1
execute if data storage switch:main {map:"octogone_nether_ice"} as @a[tag=!detached,sort=random] run function switch:modes/pitch_creep/maps/octogone_nether_ice

