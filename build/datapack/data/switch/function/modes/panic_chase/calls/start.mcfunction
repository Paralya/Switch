
#> switch:modes/panic_chase/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"panic_chase"} run function switch:modes/panic_chase/start

