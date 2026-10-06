
#> switch:modes/coin_chaser/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"coin_chaser"} run function switch:modes/coin_chaser/start

