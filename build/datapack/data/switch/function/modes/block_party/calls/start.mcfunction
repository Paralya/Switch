
#> switch:modes/block_party/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"block_party"} run function switch:modes/block_party/start

