
#> switch:_stats_custom_blocks
#
# @within	???
#

scoreboard players add #total_custom_blocks switch.data 0
scoreboard players add #total_vanilla_polished_deepslate switch.data 0
scoreboard players add #total_vanilla_netherite_block switch.data 0
scoreboard players add #total_vanilla_iron_block switch.data 0
scoreboard players add #total_vanilla_diamond_block switch.data 0
scoreboard players add #total_steel_ore switch.data 0
scoreboard players add #total_steel_block switch.data 0
scoreboard players add #total_deepslate_topaz_ore switch.data 0
scoreboard players add #total_topaz_ore switch.data 0
scoreboard players add #total_topaz_block switch.data 0
scoreboard players add #total_deepslate_ruby_ore switch.data 0
scoreboard players add #total_ruby_ore switch.data 0
scoreboard players add #total_ruby_block switch.data 0
scoreboard players add #total_deepslate_sapphire_ore switch.data 0
scoreboard players add #total_sapphire_ore switch.data 0
scoreboard players add #total_sapphire_block switch.data 0
scoreboard players add #total_deepslate_adamantium_ore switch.data 0
scoreboard players add #total_adamantium_ore switch.data 0
scoreboard players add #total_adamantium_block switch.data 0
tellraw @s [{"text":"- Total 'Adamantium Block': ","color":"gold"},{"score":{"name":"#total_adamantium_block","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Adamantium Ore': ","color":"gold"},{"score":{"name":"#total_adamantium_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Deepslate Adamantium Ore': ","color":"gold"},{"score":{"name":"#total_deepslate_adamantium_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Sapphire Block': ","color":"gold"},{"score":{"name":"#total_sapphire_block","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Sapphire Ore': ","color":"gold"},{"score":{"name":"#total_sapphire_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Deepslate Sapphire Ore': ","color":"gold"},{"score":{"name":"#total_deepslate_sapphire_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Ruby Block': ","color":"gold"},{"score":{"name":"#total_ruby_block","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Ruby Ore': ","color":"gold"},{"score":{"name":"#total_ruby_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Deepslate Ruby Ore': ","color":"gold"},{"score":{"name":"#total_deepslate_ruby_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Topaz Block': ","color":"gold"},{"score":{"name":"#total_topaz_block","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Topaz Ore': ","color":"gold"},{"score":{"name":"#total_topaz_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Deepslate Topaz Ore': ","color":"gold"},{"score":{"name":"#total_deepslate_topaz_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Steel Block': ","color":"gold"},{"score":{"name":"#total_steel_block","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Total 'Steel Ore': ","color":"gold"},{"score":{"name":"#total_steel_ore","objective":"switch.data"},"color":"yellow"}]
tellraw @s [{"text":"- Vanilla 'minecraft:diamond_block': ","color":"gray"},{"score":{"name":"#total_vanilla_diamond_block","objective":"switch.data"},"color":"white"}]
tellraw @s [{"text":"- Vanilla 'minecraft:iron_block': ","color":"gray"},{"score":{"name":"#total_vanilla_iron_block","objective":"switch.data"},"color":"white"}]
tellraw @s [{"text":"- Vanilla 'minecraft:netherite_block': ","color":"gray"},{"score":{"name":"#total_vanilla_netherite_block","objective":"switch.data"},"color":"white"}]
tellraw @s [{"text":"- Vanilla 'minecraft:polished_deepslate': ","color":"gray"},{"score":{"name":"#total_vanilla_polished_deepslate","objective":"switch.data"},"color":"white"}]
tellraw @s [{"text":"- Total custom blocks: ","color":"dark_aqua"},{"score":{"name":"#total_custom_blocks","objective":"switch.data"},"color":"aqua"}]

