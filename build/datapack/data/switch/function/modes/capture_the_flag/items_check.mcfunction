
#> switch:modes/capture_the_flag/items_check
#
# @executed	as @e[type=item,tag=!switch.checked]
#
# @within	switch:modes/capture_the_flag/tick [ as @e[type=item,tag=!switch.checked] ]
#

tag @s add switch.checked
execute if data entity @s Item.components."minecraft:custom_data".switch.class_item run kill @s

# No drop
data modify entity @s[nbt=!{Item:{id:"minecraft:white_wool"}},nbt=!{Item:{id:"minecraft:blue_wool"}},nbt=!{Item:{id:"minecraft:red_wool"}},nbt=!{Item:{id:"minecraft:arrow"}}] PickupDelay set value 0s
data modify entity @s[nbt=!{Item:{id:"minecraft:white_wool"}},nbt=!{Item:{id:"minecraft:blue_wool"}},nbt=!{Item:{id:"minecraft:red_wool"}},nbt=!{Item:{id:"minecraft:arrow"}}] Owner set from entity @s Thrower

