
#> switch:modes/pillars_of_fortune/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"pillars_of_fortune"} run function switch:modes/pillars_of_fortune/tick

