
#> switch:modes/bombardement/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"bombardement"} run function switch:modes/bombardement/tick

