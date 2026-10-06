
#> switch:modes/coin_chaser/respawn
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/coin_chaser/joined
#			string in switch:modes/coin_chaser/tick
#

execute if score #reconnect switch.data matches 0 run function switch:modes/coin_chaser/give_items
execute if score #reconnect switch.data matches 0 run function switch:maps/spread_one_player

