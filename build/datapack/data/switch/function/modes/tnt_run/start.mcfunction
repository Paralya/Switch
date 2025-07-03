
#> switch:modes/tnt_run/start
#
# @within	switch:modes/tnt_run/calls/start
#

effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
execute as @a[tag=!detached] at @s run function switch:modes/tnt_run/give_items
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"tnt_run", maps:["tnt_run_futuristic","arti_tnt_run_tower","elza_dual_biomes"]}

execute in switch:game run gamerule fallDamage false
execute in switch:game run gamerule doTileDrops false

function switch:translations/modes_tnt_run_start

scoreboard players set #tnt_run_seconds switch.data -15
scoreboard players set #tnt_run_ticks switch.data 0
scoreboard players set #process_end switch.data 0

