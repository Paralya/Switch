
#> switch:custom_blocks/_groups/minecraft_polished_deepslate
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

