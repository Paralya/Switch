
#> switch:custom_blocks/awakened_stardust_ore/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1]
#
# @within	switch:custom_blocks/awakened_stardust_ore/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] ]
#

# If silk touch applied
execute if score #is_silk_touch switch.data matches 1 run data modify entity @s Item.id set from storage switch:items all.awakened_stardust_ore.id
execute if score #is_silk_touch switch.data matches 1 run data modify entity @s Item.components set from storage switch:items all.awakened_stardust_ore.components

# Else, no silk touch
execute if score #is_silk_touch switch.data matches 0 run data modify entity @s Item.id set from storage switch:items all.awakened_stardust.id
execute if score #is_silk_touch switch.data matches 0 run data modify entity @s Item.components set from storage switch:items all.awakened_stardust.components

# Get item count in every case
execute store result entity @s Item.count byte 1 run scoreboard players get #item_count switch.data

