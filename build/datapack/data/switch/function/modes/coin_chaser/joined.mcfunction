
#> switch:modes/coin_chaser/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/coin_chaser/calls/joined
#

execute if score #reconnect switch.data matches 0 run function switch:modes/coin_chaser/respawn

