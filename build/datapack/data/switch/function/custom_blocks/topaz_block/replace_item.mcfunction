
#> switch:custom_blocks/topaz_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1]
#
# @within	switch:custom_blocks/topaz_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1] ]
#

data modify entity @s Item.components set from storage switch:items all.topaz_block.components
data modify entity @s Item.id set from storage switch:items all.topaz_block.id

