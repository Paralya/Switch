
#> switch:modes/minigolf/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"minigolf"} run function switch:modes/minigolf/stop

