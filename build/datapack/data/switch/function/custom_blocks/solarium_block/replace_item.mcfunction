
#> switch:custom_blocks/solarium_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:orange_concrete"}},distance=..1]
#
# @within	switch:custom_blocks/solarium_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:orange_concrete"}},distance=..1] ]
#

data modify entity @s Item.components set from storage switch:items all.solarium_block.components
data modify entity @s Item.id set from storage switch:items all.solarium_block.id

