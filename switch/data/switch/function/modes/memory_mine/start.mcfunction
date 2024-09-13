
gamemode adventure @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
execute as @a[tag=!detached] run attribute @s generic.jump_strength base set 0
function switch:utils/set_dynamic_time

scoreboard players set #is_adventure switch.data 1
function switch:translations/modes_memory_mine_start

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set #memory_mine_seconds switch.data -5
scoreboard players set #memory_mine_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute in minecraft:overworld run spreadplayers 153013 153016 0 15 under 105 false @a[tag=!detached]

