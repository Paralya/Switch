
#> switch:modes/infected/no_drop
#
# @executed	as @e[type=item,tag=!switch.checked]
#
# @within	switch:modes/infected/tick [ as @e[type=item,tag=!switch.checked] ]
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

# If zombie hands, remove the item
execute if data entity @s Item.components."minecraft:custom_data".switch.zombie_hands run kill @s

