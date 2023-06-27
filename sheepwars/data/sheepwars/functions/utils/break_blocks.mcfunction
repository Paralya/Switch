
#> sheepwars:utils/break_blocks
#
# @within			sheepwars:sheeps/final/*
# @executed			as & at the sheep
#
# @description		Explode the nearby blocks
#

# Destroy the blocks (3 rectangles)
tag @e[type=item] add sheepwars.not_new
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 air destroy
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air destroy
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 air destroy

# Replace new items by falling blocks
execute as @e[type=item,tag=!sheepwars.not_new] run function sheepwars:utils/replace_item_by_falling_block/main

# Remove the tag from the items
tag @e[type=item,tag=sheepwars.not_new] remove sheepwars.not_new

