
#> switch:modes/boat_race/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"boat_race"} run function switch:modes/boat_race/stop

