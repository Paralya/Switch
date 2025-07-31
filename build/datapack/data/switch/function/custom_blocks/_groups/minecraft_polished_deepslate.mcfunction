
#> switch:custom_blocks/_groups/minecraft_polished_deepslate
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_adamantium_ore switch.data matches 1.. if entity @s[tag=switch.adamantium_ore] run function switch:custom_blocks/adamantium_ore/destroy
execute if score #total_deepslate_adamantium_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_adamantium_ore] run function switch:custom_blocks/deepslate_adamantium_ore/destroy
execute if score #total_sapphire_ore switch.data matches 1.. if entity @s[tag=switch.sapphire_ore] run function switch:custom_blocks/sapphire_ore/destroy
execute if score #total_deepslate_sapphire_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_sapphire_ore] run function switch:custom_blocks/deepslate_sapphire_ore/destroy
execute if score #total_ruby_ore switch.data matches 1.. if entity @s[tag=switch.ruby_ore] run function switch:custom_blocks/ruby_ore/destroy
execute if score #total_deepslate_ruby_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_ruby_ore] run function switch:custom_blocks/deepslate_ruby_ore/destroy
execute if score #total_topaz_ore switch.data matches 1.. if entity @s[tag=switch.topaz_ore] run function switch:custom_blocks/topaz_ore/destroy
execute if score #total_deepslate_topaz_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_topaz_ore] run function switch:custom_blocks/deepslate_topaz_ore/destroy
execute if score #total_steel_ore switch.data matches 1.. if entity @s[tag=switch.steel_ore] run function switch:custom_blocks/steel_ore/destroy
execute if score #total_deepslate_steel_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_steel_ore] run function switch:custom_blocks/deepslate_steel_ore/destroy
execute if score #total_stardust_ore switch.data matches 1.. if entity @s[tag=switch.stardust_ore] run function switch:custom_blocks/stardust_ore/destroy
execute if score #total_deepslate_stardust_ore switch.data matches 1.. if entity @s[tag=switch.deepslate_stardust_ore] run function switch:custom_blocks/deepslate_stardust_ore/destroy
execute if score #total_awakened_stardust_ore switch.data matches 1.. if entity @s[tag=switch.awakened_stardust_ore] run function switch:custom_blocks/awakened_stardust_ore/destroy
execute if score #total_californium_ore switch.data matches 1.. if entity @s[tag=switch.californium_ore] run function switch:custom_blocks/californium_ore/destroy
execute if score #total_uranium_ore switch.data matches 1.. if entity @s[tag=switch.uranium_ore] run function switch:custom_blocks/uranium_ore/destroy
execute if score #total_ender_stardust_ore switch.data matches 1.. if entity @s[tag=switch.ender_stardust_ore] run function switch:custom_blocks/ender_stardust_ore/destroy
execute if score #total_nether_stardust_ore switch.data matches 1.. if entity @s[tag=switch.nether_stardust_ore] run function switch:custom_blocks/nether_stardust_ore/destroy

