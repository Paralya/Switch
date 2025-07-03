
#> switch:modes/memory_mine/start
#
# @within	switch:modes/memory_mine/calls/start
#

gamemode adventure @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

execute as @a[tag=!detached] run attribute @s safe_fall_distance base set 1024
execute as @a[tag=!detached] run attribute @s jump_strength base set 0

function switch:utils/choose_map_for {id:"memory_mine", maps:["memory_mine"]}
function switch:translations/modes_memory_mine_start

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set #memory_mine_seconds switch.data -10
scoreboard players set #memory_mine_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute in switch:game run spreadplayers 153013 153016 0 15 under 105 false @a[tag=!detached]

