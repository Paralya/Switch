
#> switch:modes/murder_mystery/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"murder_mystery"} run function switch:modes/murder_mystery/stop

