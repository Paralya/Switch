
#> switch:modes/capture_the_flag/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"capture_the_flag"} run function switch:modes/capture_the_flag/tick

