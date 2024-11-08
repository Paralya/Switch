
#> switch:custom_blocks/adamantium_block/replace_item
#
# @within	switch:custom_blocks/adamantium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.adamantium_block.components
data modify entity @s Item.id set from storage switch:items all.adamantium_block.id

