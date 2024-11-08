
#> switch:modes/block_party/start
#
# @within	switch:modes/block_party/calls/start
#

effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] speed infinite 3 true
time set 18000

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/block_party
function switch:translations/modes_block_party_start
execute if data storage switch:records block_party run function switch:modes/block_party/record_tellraw with storage switch:records block_party

scoreboard players set #block_party_seconds switch.data -10
scoreboard players set #block_party_ticks switch.data -200
scoreboard players set #block_party_round switch.data 1
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.time_since_movement dummy

# Data storage
execute unless data storage switch:maps block_party run data modify storage switch:maps block_party set value []

