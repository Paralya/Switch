
#> switch:calls/smithed_crafter/shapeless_recipes
#
# @within	#smithed.crafter:event/shapeless_recipes
#

execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"switch": {"adamantium_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot switch:i/adamantium_fragment_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"switch": {"sapphire_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot switch:i/sapphire_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"switch": {"ruby_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot switch:i/ruby_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"switch": {"topaz_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot switch:i/topaz_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"switch": {"steel_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot switch:i/steel_ingot_x9

