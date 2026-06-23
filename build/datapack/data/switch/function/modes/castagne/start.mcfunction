
#> switch:modes/castagne/start
#
# @within	switch:modes/castagne/calls/start
#

gamemode survival @a[tag=!detached]
function switch:modes/_common/pvp_arena/start_common
function switch:utils/choose_map_for {id:"castagne", maps:["kart_racer_relai","nuketown_no_barrier","sky_island_tower","floating_island","paralya_lobby","jn_nature_box","adraik_big_ball"]}

execute in switch:game run gamerule minecraft:natural_health_regeneration false

function switch:modes/castagne/translations/start

scoreboard players set #remaining_time switch.data 910
scoreboard players set #castagne_seconds switch.data -10
scoreboard players set #castagne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.cooldown_kill dummy

data modify storage switch:temp castagne set value []
scoreboard players set #initial_count switch.data -1
execute as @a[tag=!detached] run function switch:modes/castagne/give_items

