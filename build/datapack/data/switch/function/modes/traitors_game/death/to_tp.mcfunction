
#> switch:modes/traitors_game/death/to_tp
#
# @within	switch:modes/traitors_game/tick
#

function switch:maps/spread_one_player
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

