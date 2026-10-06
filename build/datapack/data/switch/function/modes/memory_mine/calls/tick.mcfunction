
#> switch:modes/memory_mine/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"memory_mine"} run function switch:modes/memory_mine/tick

