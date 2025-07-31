
#> switch:modes/warden_escape/calls/laser_beam
#
# @executed	as the player & at current position
#
# @within	advancement switch:warden_escape/laser_beam
#

advancement revoke @s only switch:warden_escape/laser_beam
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"warden_escape"} run advancement grant @s only switch:visible/70

