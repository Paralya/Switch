
#> switch:modes/warden_escape/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"warden_escape"} run function switch:modes/warden_escape/tick

