
#> switch:modes/capture_the_flag/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"capture_the_flag"} run function switch:modes/capture_the_flag/stop

