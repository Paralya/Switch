
#> switch:calls/furnace_nbt_recipes/smelting_recipes
#
# @within	#furnace_nbt_recipes:v1/smelting_recipes
#

execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"adamantium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/adamantium_fragment
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"deepslate_adamantium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/adamantium_fragment
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"sapphire_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/sapphire
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"deepslate_sapphire_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/sapphire
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"ruby_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/ruby
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"deepslate_ruby_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/ruby
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"topaz_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/topaz
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"deepslate_topaz_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/topaz
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"switch": {"steel_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot switch:i/steel_ingot

