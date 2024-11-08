
#> switch:custom_blocks/_groups/minecraft_iron_block
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_steel_block switch.data matches 1.. if entity @s[tag=switch.steel_block] run function switch:custom_blocks/steel_block/destroy

