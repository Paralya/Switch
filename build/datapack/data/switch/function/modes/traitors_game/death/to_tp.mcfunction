
#> switch:modes/traitors_game/death/to_tp
#
# @executed	as @a[tag=!...]
#
# @within	switch:modes/traitors_game/tick [ as @a[tag=!...] ]
#

function switch:maps/spread_one_player
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

