
#> switch:custom_blocks/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:v2.0.0/tick_2 [ as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s ]
#			switch:v2.0.0/second [ as @e[type=#switch:custom_blocks,tag=...,predicate=!switch:advanced_check_vanilla_blocks] & at @s ]
#			switch:v2.0.0/second_5 [ as @e[type=item_display,tag=switch.custom_block,predicate=!switch:advanced_check_vanilla_blocks] & at @s ]
#			switch:calls/common_signals/custom_block_destroy [ as @e[tag=switch.custom_block,dx=0,dy=0,dz=0] & at @s ]
#

# Check for missing vanilla blocks
execute if score #total_vanilla_black_concrete switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_black_concrete] unless block ~ ~ ~ minecraft:black_concrete run return run function switch:custom_blocks/_groups/minecraft_black_concrete
execute if score #total_vanilla_diamond_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_diamond_block] unless block ~ ~ ~ minecraft:diamond_block run return run function switch:custom_blocks/_groups/minecraft_diamond_block
execute if score #total_vanilla_emerald_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_emerald_block] unless block ~ ~ ~ minecraft:emerald_block run return run function switch:custom_blocks/_groups/minecraft_emerald_block
execute if score #total_vanilla_iron_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run return run function switch:custom_blocks/_groups/minecraft_iron_block
execute if score #total_vanilla_lime_concrete switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_lime_concrete] unless block ~ ~ ~ minecraft:lime_concrete run return run function switch:custom_blocks/_groups/minecraft_lime_concrete
execute if score #total_vanilla_netherite_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_netherite_block] unless block ~ ~ ~ minecraft:netherite_block run return run function switch:custom_blocks/_groups/minecraft_netherite_block
execute if score #total_vanilla_orange_concrete switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_orange_concrete] unless block ~ ~ ~ minecraft:orange_concrete run return run function switch:custom_blocks/_groups/minecraft_orange_concrete
execute if score #total_vanilla_polished_deepslate switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run return run function switch:custom_blocks/_groups/minecraft_polished_deepslate
execute if score #total_vanilla_raw_iron_block switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_raw_iron_block] unless block ~ ~ ~ minecraft:raw_iron_block run return run function switch:custom_blocks/_groups/minecraft_raw_iron_block
execute if score #total_vanilla_stone switch.data matches 1.. if entity @s[tag=switch.vanilla.minecraft_stone] unless block ~ ~ ~ minecraft:stone run return run function switch:custom_blocks/_groups/minecraft_stone

