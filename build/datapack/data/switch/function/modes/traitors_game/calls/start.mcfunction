
#> switch:modes/traitors_game/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"traitors_game"} run function switch:modes/traitors_game/start

