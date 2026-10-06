
#> switch:modes/rush_the_flag/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"rush_the_flag"} run function switch:modes/rush_the_flag/start

