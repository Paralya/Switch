
#> switch:custom_blocks/deepslate_topaz_ore/place_secondary
#
# @executed	at @s
#
# @within	switch:custom_blocks/deepslate_topaz_ore/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add switch.custom_block
tag @s add switch.deepslate_topaz_ore
tag @s add switch.vanilla.minecraft_polished_deepslate

# Add a custom name
data merge entity @s {"CustomName": {"text": "Deepslate Topaz Ore"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="switch:deepslate_topaz_ore"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

