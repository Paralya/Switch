
#> switch:modes/spleef/no_drop
#
# @executed	as @e[type=item,tag=!switch.checked]
#
# @within	switch:modes/spleef/tick [ as @e[type=item,tag=!switch.checked] ]
#

tag @s add switch.checked
execute if data entity @s Item{id:"snowball"} run kill @s
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

