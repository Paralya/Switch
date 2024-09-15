
team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

execute in minecraft:overworld run gamerule showDeathMessages false
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:overworld run gamerule keepInventory true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/pitch_creep

function switch:translations/modes_pitch_creep_start

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -5
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.shot minecraft.used:minecraft.bow
scoreboard players set @a[tag=!detached] switch.temp.shot 0

