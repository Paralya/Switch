
#> switch:modes/coin_chaser/no_drop
#
# @within	switch:modes/coin_chaser/tick
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

