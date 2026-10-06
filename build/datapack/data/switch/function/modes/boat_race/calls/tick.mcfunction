
#> switch:modes/boat_race/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"boat_race"} run function switch:modes/boat_race/tick

