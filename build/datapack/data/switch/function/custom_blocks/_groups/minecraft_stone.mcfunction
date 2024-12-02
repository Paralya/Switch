
#> switch:custom_blocks/_groups/minecraft_stone
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_awakened_stardust_block switch.data matches 1.. if entity @s[tag=switch.awakened_stardust_block] run function switch:custom_blocks/awakened_stardust_block/destroy

