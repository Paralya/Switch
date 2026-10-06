
#> switch:modes/fireblast/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"fireblast"} run function switch:modes/fireblast/start

