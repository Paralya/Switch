
gamemode adventure @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
team modify switch.no_pvp seeFriendlyInvisibles true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 250 true
function switch:utils/set_dynamic_time

scoreboard players set #is_aventure switch.data 1
function switch:translations/modes_memory_mine_start

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set #memory_mine_seconds switch.data -5
scoreboard players set #memory_mine_ticks switch.data 0
scoreboard players set #process_end switch.data 0

spreadplayers 153013 153016 0 15 under 105 false @a[tag=!detached]

