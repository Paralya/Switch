
#> switch:modes/gay_shooter/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"gay_shooter"} run function switch:modes/gay_shooter/start

