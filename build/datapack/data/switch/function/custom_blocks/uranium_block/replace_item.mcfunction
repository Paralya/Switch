
#> switch:custom_blocks/uranium_block/replace_item
#
# @within	switch:custom_blocks/uranium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.uranium_block.components
data modify entity @s Item.id set from storage switch:items all.uranium_block.id

