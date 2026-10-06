
#> switch:modes/beat_the_kings/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"beat_the_kings"} run function switch:modes/beat_the_kings/start

