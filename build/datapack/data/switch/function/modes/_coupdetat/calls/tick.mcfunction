
#> switch:modes/_coupdetat/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"_coupdetat"} run function switch:modes/_coupdetat/tick

