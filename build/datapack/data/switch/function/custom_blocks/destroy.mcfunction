
#> switch:custom_blocks/destroy
#
# @within	switch:v2.0.0/tick_2
#			switch:v2.0.0/second
#			switch:v2.0.0/second_5
#			switch:calls/common_signals/on_ore_destroyed
#

execute if score #total_vanilla_diamond_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_diamond_block] unless block ~ ~ ~ minecraft:diamond_block run function switch:custom_blocks/_groups/minecraft_diamond_block
execute if score #total_vanilla_iron_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run function switch:custom_blocks/_groups/minecraft_iron_block
execute if score #total_vanilla_netherite_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_netherite_block] unless block ~ ~ ~ minecraft:netherite_block run function switch:custom_blocks/_groups/minecraft_netherite_block
execute if score #total_vanilla_polished_deepslate switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run function switch:custom_blocks/_groups/minecraft_polished_deepslate

