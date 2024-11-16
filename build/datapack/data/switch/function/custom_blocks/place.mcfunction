
#> switch:custom_blocks/place
#
# @within	switch:custom_blocks/on_place
#

tag @s add switch.placer
execute if data storage smithed.custom_block:main blockApi{id:"switch:adamantium_block"} run function switch:custom_blocks/adamantium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:adamantium_ore"} run function switch:custom_blocks/adamantium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:deepslate_adamantium_ore"} run function switch:custom_blocks/deepslate_adamantium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:sapphire_block"} run function switch:custom_blocks/sapphire_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:sapphire_ore"} run function switch:custom_blocks/sapphire_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:deepslate_sapphire_ore"} run function switch:custom_blocks/deepslate_sapphire_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:ruby_block"} run function switch:custom_blocks/ruby_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:ruby_ore"} run function switch:custom_blocks/ruby_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:deepslate_ruby_ore"} run function switch:custom_blocks/deepslate_ruby_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:topaz_block"} run function switch:custom_blocks/topaz_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:topaz_ore"} run function switch:custom_blocks/topaz_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:deepslate_topaz_ore"} run function switch:custom_blocks/deepslate_topaz_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:steel_block"} run function switch:custom_blocks/steel_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:steel_ore"} run function switch:custom_blocks/steel_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:deepslate_steel_ore"} run function switch:custom_blocks/deepslate_steel_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:raw_steel_block"} run function switch:custom_blocks/raw_steel_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:californium_block"} run function switch:custom_blocks/californium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:californium_ore"} run function switch:custom_blocks/californium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:uranium_block"} run function switch:custom_blocks/uranium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:uranium_ore"} run function switch:custom_blocks/uranium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"switch:radioactive_waste_barrel"} run function switch:custom_blocks/radioactive_waste_barrel/place_main
tag @s remove switch.placer

