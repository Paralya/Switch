
#> switch:modes/kart_racer/checkpoints/forced_respawn
#
# @executed	as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] & at @s
#
# @within	switch:modes/kart_racer/out_of_map [ as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] & at @s ]
#

function switch:modes/kart_racer/checkpoints/respawn/hard
function switch:translations/modes_kart_racer_checkpoints_forced_respawn
execute at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute at @s run particle portal ^ ^1 ^1 1 1 1 1 1000

