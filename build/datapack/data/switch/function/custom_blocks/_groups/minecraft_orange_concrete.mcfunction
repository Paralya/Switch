
#> switch:custom_blocks/_groups/minecraft_orange_concrete
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_solarium_block switch.data matches 1.. if entity @s[tag=switch.solarium_block] run function switch:custom_blocks/solarium_block/destroy

