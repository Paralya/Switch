
#> switch:modes/spectres_game/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"spectres_game"} run function switch:modes/spectres_game/start

