
#> switch:custom_blocks/californium_block/replace_item
#
# @within	switch:custom_blocks/californium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.californium_block.components
data modify entity @s Item.id set from storage switch:items all.californium_block.id
