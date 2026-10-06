
#> switch:modes/protect_the_king/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"protect_the_king"} run function switch:modes/protect_the_king/start

