
#> switch:custom_blocks/sapphire_ore/place_secondary
#
# @within	switch:custom_blocks/sapphire_ore/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add switch.custom_block
tag @s add switch.sapphire_ore
tag @s add switch.vanilla.minecraft_polished_deepslate

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="switch:sapphire_ore"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}
