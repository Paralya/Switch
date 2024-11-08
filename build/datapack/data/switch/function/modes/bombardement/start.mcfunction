
#> switch:modes/bombardement/start
#
# @within	switch:modes/bombardement/calls/start
#

time set 6000
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:choose_map_for/bombardement
function switch:translations/modes_bombardement_start

scoreboard players set #bombardement_seconds switch.data -10
scoreboard players set #bombardement_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute if data storage switch:records bombardement run function switch:modes/bombardement/record_tellraw with storage switch:records bombardement

