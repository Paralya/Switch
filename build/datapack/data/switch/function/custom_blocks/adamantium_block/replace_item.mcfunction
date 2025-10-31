
#> switch:custom_blocks/adamantium_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:netherite_block"}},distance=..1]
#
# @within	switch:custom_blocks/adamantium_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:netherite_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage switch:items all.adamantium_block.components
data modify entity @s Item.id set from storage switch:items all.adamantium_block.id

