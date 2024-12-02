
#> switch:custom_blocks/solarium_block/replace_item
#
# @within	switch:custom_blocks/solarium_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.solarium_block.components
data modify entity @s Item.id set from storage switch:items all.solarium_block.id

