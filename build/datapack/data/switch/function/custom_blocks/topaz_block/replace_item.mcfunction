
#> switch:custom_blocks/topaz_block/replace_item
#
# @within	switch:custom_blocks/topaz_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.topaz_block.components
data modify entity @s Item.id set from storage switch:items all.topaz_block.id

