
#> switch:custom_blocks/solarium_block/place_secondary
#
# @executed	at @s
#
# @within	switch:custom_blocks/solarium_block/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add switch.custom_block
tag @s add switch.solarium_block
tag @s add switch.vanilla.minecraft_orange_concrete

# Add a custom name
data merge entity @s {"CustomName": {"text": "Solarium Block"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="switch:solarium_block"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

