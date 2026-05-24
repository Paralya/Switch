
#> switch:custom_blocks/compute_brightness
#
# @executed	at @s
#
# @within	switch:custom_blocks/adamantium_block/place_secondary
#			switch:custom_blocks/adamantium_ore/place_secondary
#			switch:custom_blocks/deepslate_adamantium_ore/place_secondary
#			switch:custom_blocks/sapphire_block/place_secondary
#			switch:custom_blocks/sapphire_ore/place_secondary
#			switch:custom_blocks/deepslate_sapphire_ore/place_secondary
#			switch:custom_blocks/ruby_block/place_secondary
#			switch:custom_blocks/ruby_ore/place_secondary
#			switch:custom_blocks/deepslate_ruby_ore/place_secondary
#			switch:custom_blocks/topaz_block/place_secondary
#			switch:custom_blocks/topaz_ore/place_secondary
#			switch:custom_blocks/deepslate_topaz_ore/place_secondary
#			switch:custom_blocks/steel_block/place_secondary
#			switch:custom_blocks/steel_ore/place_secondary
#			switch:custom_blocks/deepslate_steel_ore/place_secondary
#			switch:custom_blocks/raw_steel_block/place_secondary
#			switch:custom_blocks/stardust_block/place_secondary
#			switch:custom_blocks/stardust_ore/place_secondary
#			switch:custom_blocks/deepslate_stardust_ore/place_secondary
#			switch:custom_blocks/awakened_stardust_block/place_secondary
#			switch:custom_blocks/awakened_stardust_ore/place_secondary
#			switch:custom_blocks/legendarium_block/place_secondary
#			switch:custom_blocks/solarium_block/place_secondary
#			switch:custom_blocks/darkium_block/place_secondary
#			switch:custom_blocks/californium_block/place_secondary
#			switch:custom_blocks/californium_ore/place_secondary
#			switch:custom_blocks/uranium_block/place_secondary
#			switch:custom_blocks/uranium_ore/place_secondary
#			switch:custom_blocks/ender_stardust_ore/place_secondary
#			switch:custom_blocks/nether_stardust_ore/place_secondary
#			switch:custom_blocks/radioactive_waste_barrel/place_secondary
#			switch:v2.0.0/second_5 [ as @e[type=item_display,tag=switch.custom_block,sort=random,limit=50] & at @s ]
#

# Reset light score
scoreboard players set #light switch.data 0

# Check all 6 neighboring positions
execute if score #light switch.data matches ..14 positioned ~ ~1 ~ run function switch:custom_blocks/check_light
execute if score #light switch.data matches ..14 positioned ~ ~-1 ~ run function switch:custom_blocks/check_light
execute if score #light switch.data matches ..14 positioned ~1 ~ ~ run function switch:custom_blocks/check_light
execute if score #light switch.data matches ..14 positioned ~-1 ~ ~ run function switch:custom_blocks/check_light
execute if score #light switch.data matches ..14 positioned ~ ~ ~1 run function switch:custom_blocks/check_light
execute if score #light switch.data matches ..14 positioned ~ ~ ~-1 run function switch:custom_blocks/check_light

# Apply computed brightness to the entity
data merge entity @s {brightness:{block:0,sky:0}}
execute store result entity @s brightness.block int 1 run scoreboard players get #light switch.data
execute store result entity @s brightness.sky int 1 run scoreboard players get #light switch.data

