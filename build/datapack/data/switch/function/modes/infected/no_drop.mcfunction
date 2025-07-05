
#> switch:modes/infected/no_drop
#
# @within	switch:modes/infected/tick
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

# If zombie hands, remove the item
execute if data entity @s Item.components."minecraft:custom_data".switch.zombie_hands run kill @s

