
#> switch:custom_blocks/awakened_stardust_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:stone"}},distance=..1]
#
# @within	switch:custom_blocks/awakened_stardust_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:stone"}},distance=..1] ]
#

data modify entity @s Item.components set from storage switch:items all.awakened_stardust_block.components
data modify entity @s Item.id set from storage switch:items all.awakened_stardust_block.id

