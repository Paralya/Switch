
#> switch:custom_blocks/raw_steel_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1]
#
# @within	switch:custom_blocks/raw_steel_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1] ]
#

data modify entity @s Item.components set from storage switch:items all.raw_steel_block.components
data modify entity @s Item.id set from storage switch:items all.raw_steel_block.id

