
#> switch:custom_blocks/legendarium_block/replace_item
#
# @within	switch:custom_blocks/legendarium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.legendarium_block.components
data modify entity @s Item.id set from storage switch:items all.legendarium_block.id

