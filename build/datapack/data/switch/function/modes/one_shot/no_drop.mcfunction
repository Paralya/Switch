
#> switch:modes/one_shot/no_drop
#
# @executed	as @e[type=item,tag=!switch.checked]
#
# @within	switch:modes/one_shot/tick [ as @e[type=item,tag=!switch.checked] ]
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

