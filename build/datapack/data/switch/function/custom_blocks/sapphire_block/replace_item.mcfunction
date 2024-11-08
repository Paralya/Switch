
#> switch:custom_blocks/sapphire_block/replace_item
#
# @within	switch:custom_blocks/sapphire_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.sapphire_block.components
data modify entity @s Item.id set from storage switch:items all.sapphire_block.id

