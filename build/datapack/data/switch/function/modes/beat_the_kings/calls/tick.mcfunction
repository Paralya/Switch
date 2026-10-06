
#> switch:modes/beat_the_kings/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"beat_the_kings"} run function switch:modes/beat_the_kings/tick

