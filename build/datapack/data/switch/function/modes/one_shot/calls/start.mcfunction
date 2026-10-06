
#> switch:modes/one_shot/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"one_shot"} run function switch:modes/one_shot/start

