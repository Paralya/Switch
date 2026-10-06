
#> switch:modes/laser_game/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/laser_game/calls/joined
#

execute if score #reconnect switch.data matches 0 run function switch:modes/laser_game/teleport_players
function switch:translations/common/joined_reconnect

