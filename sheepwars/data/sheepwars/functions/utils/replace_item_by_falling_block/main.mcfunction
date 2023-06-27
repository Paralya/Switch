
#> sheepwars:utils/replace_item_by_falling_block/main
#
# @within			sheepwars:utils/break_blocks
# @executed			as the item & at the sheep that exploded
#
# @output storage	sheepwars:main ItemId : the item id
#
# @description		Explode the nearby blocks
#

# Get the item into a storage
data modify storage sheepwars:main ItemId set from entity @s Item.id

# Replace the item by a falling block
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Tags:["sheepwars.falling_block_new"]}
execute as @e[tag=sheepwars.falling_block_new] run function sheepwars:utils/replace_item_by_falling_block/falling_block

# Kill the item
kill @s

