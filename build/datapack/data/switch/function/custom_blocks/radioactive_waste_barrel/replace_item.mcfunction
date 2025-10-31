
#> switch:custom_blocks/radioactive_waste_barrel/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1]
#
# @within	switch:custom_blocks/radioactive_waste_barrel/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage switch:items all.radioactive_waste_barrel.components
data modify entity @s Item.id set from storage switch:items all.radioactive_waste_barrel.id

