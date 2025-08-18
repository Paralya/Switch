
#> switch:modes/one_shot/start
#
# @within	switch:modes/one_shot/calls/start
#

function switch:utils/set_dynamic_time

execute in switch:game run gamerule fallDamage false
execute in switch:game run gamerule keepInventory true
execute in switch:game run gamerule showDeathMessages true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 6 255 true
effect give @a[tag=!detached] slowness 6 255 true
effect give @a[tag=!detached] blindness 4 255 true

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"one_shot", maps:["friends_pvpbox_hills","jn_one_in_the_chamber_1","jn_one_in_the_chamber_2"]}
function switch:translations/modes_one_shot_start

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":"[Goal: 30 Kills]","color":"gold"}
scoreboard objectives setdisplay sidebar switch.temp.kills

scoreboard players set #remaining_time switch.data 600
scoreboard players set #one_shot_seconds switch.data -10
scoreboard players set #one_shot_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #winner switch.data 0

# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] blindness 5 2 true
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

# Summon 64 markers for respawn system
scoreboard players set #respawn_marker_count switch.data 0
execute summon marker run function switch:modes/one_shot/respawn/spawn_marker
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] summon marker run function switch:modes/one_shot/respawn/spawn_marker

# Make players spawn
execute as @a[tag=!detached] run function switch:modes/one_shot/respawn/main

