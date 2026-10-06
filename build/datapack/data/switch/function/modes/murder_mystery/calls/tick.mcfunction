
#> switch:modes/murder_mystery/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"murder_mystery"} run function switch:modes/murder_mystery/tick

