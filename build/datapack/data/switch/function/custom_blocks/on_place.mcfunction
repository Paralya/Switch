
#> switch:custom_blocks/on_place
#
# @within	#smithed.custom_block:event/on_place
#

execute if data storage smithed.custom_block:main blockApi.__data.Items[0].components."minecraft:custom_data".smithed.block{from:"switch"} run function switch:custom_blocks/place

