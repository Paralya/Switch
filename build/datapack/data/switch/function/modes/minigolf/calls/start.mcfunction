
#> switch:modes/minigolf/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"minigolf"} run function switch:modes/minigolf/start

