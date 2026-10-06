
#> switch:modes/tnt_run/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"tnt_run"} run function switch:modes/tnt_run/start

