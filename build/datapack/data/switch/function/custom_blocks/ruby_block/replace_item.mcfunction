
#> switch:custom_blocks/ruby_block/replace_item
#
# @within	switch:custom_blocks/ruby_block/destroy
#

data modify entity @s Item.components set from storage switch:items all.ruby_block.components
data modify entity @s Item.id set from storage switch:items all.ruby_block.id

