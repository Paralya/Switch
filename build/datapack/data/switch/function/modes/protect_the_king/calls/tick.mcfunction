
#> switch:modes/protect_the_king/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"protect_the_king"} run function switch:modes/protect_the_king/tick

