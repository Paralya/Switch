
#> switch:modes/one_shot/start
#
# @within	switch:modes/one_shot/calls/start
#

function switch:utils/set_dynamic_time

gamerule fallDamage false
gamerule keepInventory true
gamerule showDeathMessages true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 6 255 true
effect give @a[tag=!detached] slowness 6 255 true
effect give @a[tag=!detached] blindness 4 255 true

## Téléportation des joueurs
function switch:choose_map_for/one_shot
function switch:translations/modes_one_shot_start

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":"[Objective: 30 Kills]","color":"gold"}
scoreboard objectives setdisplay sidebar switch.temp.kills

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #one_shot_seconds switch.data 0
scoreboard players set #one_shot_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #winner switch.data 0

# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] blindness 5 2 true
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

# Summon 128 markers for respawn system and keep only 64
scoreboard players set #middle_x switch.data 0
scoreboard players set #middle_y switch.data 0
scoreboard players set #middle_z switch.data 0
execute summon marker run function switch:modes/one_shot/respawn/spawn_marker
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] summon marker run function switch:modes/one_shot/respawn/spawn_marker
execute summon marker run function switch:modes/one_shot/respawn/erase_close_to_middle

# Make players spawn
execute as @a[tag=!detached] run function switch:modes/one_shot/respawn/main

