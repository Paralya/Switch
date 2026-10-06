
#> switch:modes/shoot_da_sheep/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"shoot_da_sheep"} run function switch:modes/shoot_da_sheep/start

