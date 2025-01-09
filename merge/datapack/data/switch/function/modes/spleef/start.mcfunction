
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] mining_fatigue 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time
execute in switch:game run gamerule doTileDrops false

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"spleef", maps:["spleef_1"]}

function switch:translations/modes_spleef_start

scoreboard players set #spleef_seconds switch.data -5
scoreboard players set #spleef_ticks switch.data 0
scoreboard players set #process_end switch.data 0

