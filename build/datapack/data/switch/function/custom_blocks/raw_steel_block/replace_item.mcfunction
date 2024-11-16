
#> switch:custom_blocks/raw_steel_block/replace_item
#
# @within	switch:custom_blocks/raw_steel_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.raw_steel_block.components
data modify entity @s Item.id set from storage switch:items all.raw_steel_block.id

