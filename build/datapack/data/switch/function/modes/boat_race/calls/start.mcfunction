
#> switch:modes/boat_race/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"boat_race"} run function switch:modes/boat_race/start

