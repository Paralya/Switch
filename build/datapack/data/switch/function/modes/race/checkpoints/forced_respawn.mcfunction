
#> switch:modes/race/checkpoints/forced_respawn
#
# @executed	as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] & at @s
#
# @within	switch:modes/race/out_of_map [ as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] & at @s ]
#

function switch:modes/race/checkpoints/respawn/hard
function switch:translations/modes_race_checkpoints_forced_respawn
execute at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute at @s run particle portal ^ ^1 ^1 1 1 1 1 1000

