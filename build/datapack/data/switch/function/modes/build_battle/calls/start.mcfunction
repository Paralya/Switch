
#> switch:modes/build_battle/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"build_battle"} in switch:build_battle run function switch:modes/build_battle/start

