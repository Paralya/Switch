
#> switch:modes/thunder_spear/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"thunder_spear"} run function switch:modes/thunder_spear/tick

