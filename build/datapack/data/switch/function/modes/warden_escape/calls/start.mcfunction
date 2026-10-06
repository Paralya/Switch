
#> switch:modes/warden_escape/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"warden_escape"} run function switch:modes/warden_escape/start

