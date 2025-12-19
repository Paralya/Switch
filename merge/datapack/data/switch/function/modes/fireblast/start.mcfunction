
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] glowing infinite 255 true
time set 6000

execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:block_drops false
execute in switch:game run gamerule minecraft:mob_griefing true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"fireblast", maps:["fireblast_bubulle","fireblast_cookie","fireblast_pork"]}
function switch:translations/modes_fireblast_start

scoreboard players set #remaining_time switch.data 605
scoreboard players set #fireblast_seconds switch.data -12
scoreboard players set #fireblast_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.reload_boost dummy

