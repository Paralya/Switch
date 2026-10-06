
#> switch:modes/rush_the_point/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/tick

