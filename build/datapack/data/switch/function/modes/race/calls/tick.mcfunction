
#> switch:modes/race/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"race"} run function switch:modes/race/tick

