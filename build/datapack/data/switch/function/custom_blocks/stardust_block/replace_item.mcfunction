
#> switch:custom_blocks/stardust_block/replace_item
#
# @within	switch:custom_blocks/stardust_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.stardust_block.components
data modify entity @s Item.id set from storage switch:items all.stardust_block.id

