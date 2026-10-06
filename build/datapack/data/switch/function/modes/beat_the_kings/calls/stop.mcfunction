
#> switch:modes/beat_the_kings/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"beat_the_kings"} run function switch:modes/beat_the_kings/stop

