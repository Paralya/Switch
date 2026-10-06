
#> switch:modes/thunder_spear/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"thunder_spear"} run function switch:modes/thunder_spear/start

