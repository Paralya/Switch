
#> sheepwars:utils/replace_item_by_falling_block/falling_block
#
# @within			sheepwars:utils/replace_item_by_falling_block/main
# @executed			as the falling block & at the item location
#
# @input storage	sheepwars:main ItemId : the item id
#
# @description		Explode the nearby blocks
#

# Set the block state from the item id
data modify entity @s BlockState.Name set from storage sheepwars:main ItemId
data modify entity @s BlockState.Properties set from storage sheepwars:main ItemProperties
say @s

tag @s remove sheepwars.falling_block_new

