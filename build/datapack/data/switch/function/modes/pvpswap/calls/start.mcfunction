
#> switch:modes/pvpswap/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"pvpswap"} run function switch:modes/pvpswap/start

