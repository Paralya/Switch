
#> switch:modes/infected/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"infected"} run function switch:modes/infected/tick

