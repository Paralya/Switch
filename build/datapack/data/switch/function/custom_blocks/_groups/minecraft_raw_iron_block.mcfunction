
#> switch:custom_blocks/_groups/minecraft_raw_iron_block
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_raw_steel_block switch.data matches 1.. if entity @s[tag=switch.raw_steel_block] run function switch:custom_blocks/raw_steel_block/destroy

