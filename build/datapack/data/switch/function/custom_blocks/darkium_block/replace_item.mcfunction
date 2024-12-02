
#> switch:custom_blocks/darkium_block/replace_item
#
# @within	switch:custom_blocks/darkium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.darkium_block.components
data modify entity @s Item.id set from storage switch:items all.darkium_block.id

