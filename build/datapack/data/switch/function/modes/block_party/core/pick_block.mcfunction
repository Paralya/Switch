
#> switch:modes/block_party/core/pick_block
#
# @within	switch:modes/block_party/core/pick_random_art
#			switch:modes/block_party/core/pick_failed
#

scoreboard players add #bp_attempts switch.data 1
scoreboard players set #bp_block switch.data -2
scoreboard players set #bp_selected_art switch.data -1
scoreboard players set #bp_selected_block switch.data -1
scoreboard players set #block_count switch.data 0
data remove storage switch:main Item

## Choose a pixel art (if the list is empty, remade it)
scoreboard players set #art_count switch.data 0
execute store result score #art_count switch.data if data storage switch:maps block_party[]
execute if score #art_count switch.data matches 0 run function switch:modes/block_party/core/remake_list/main
execute unless data storage switch:maps block_party[0] run return run function switch:modes/block_party/core/pick_failed {reason:"no pixel art found in the art list"}
execute store result score #bp_selected_art switch.data run data get storage switch:maps block_party[0]
data remove storage switch:maps block_party[0]

# Teleport current marker to the selected pixel art
tp @s 4093 85 -9985
scoreboard players set #y_pos switch.data 85
scoreboard players operation #y_pos switch.data -= #bp_selected_art switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y_pos switch.data

# Everything read or written below must be loaded, else the commands fail silently and no color is given
execute at @s unless loaded ~ ~ ~ run return run function switch:modes/block_party/core/pick_failed {reason:"the pixel art is not loaded"}
execute at @s positioned ~ ~ ~65 unless loaded ~ ~ ~ run return run function switch:modes/block_party/core/pick_failed {reason:"the palette is not loaded"}
execute unless loaded 4093 100 -9985 run return run function switch:modes/block_party/core/pick_failed {reason:"the arena is not loaded"}
execute unless loaded 0 4 0 run return run function switch:modes/block_party/core/pick_failed {reason:"the shulker box position 0 4 0 is not loaded"}

# Clone the selected pixel art
execute store success score #bp_cloned switch.data at @s run clone ~ ~ ~ ~63 ~ ~63 ~ 100 ~ replace force
execute if score #bp_cloned switch.data matches 0 run return run function switch:modes/block_party/core/pick_failed {reason:"the pixel art could not be cloned"}

## Choose a block among the palette, which is the row of blocks next to the art, ended by air
execute at @s positioned ~ ~ ~65 unless block ~ ~ ~ air run function switch:modes/block_party/core/get_block_count_loop
execute if score #block_count switch.data matches 0 run return run function switch:modes/block_party/core/pick_failed {reason:"the palette is empty"}
scoreboard players operation #modulo_rand switch.data = #block_count switch.data
function switch:utils/get_random/main
scoreboard players operation #bp_selected_block switch.data = #random switch.data

# Teleport current marker to the selected block
scoreboard players set #z_pos switch.data -9920
scoreboard players operation #z_pos switch.data += #bp_selected_block switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z_pos switch.data

# Get the block at the current marker
setblock 0 4 0 air
setblock 0 4 0 yellow_shulker_box
execute at @s run loot insert 0 4 0 mine ~ ~ ~ diamond_pickaxe
execute unless data block 0 4 0 Items[0] run return run function switch:modes/block_party/core/pick_failed {reason:"the palette block dropped nothing"}

# Which color it is (white terracotta is -1, then the 16 concretes from 0)
data modify storage switch:main Item set from block 0 4 0 Items[0]
execute if data storage switch:main Item{id:"minecraft:white_terracotta"} run scoreboard players set #bp_block switch.data -1
execute if data storage switch:main Item{id:"minecraft:white_concrete"} run scoreboard players set #bp_block switch.data 0
execute if data storage switch:main Item{id:"minecraft:orange_concrete"} run scoreboard players set #bp_block switch.data 1
execute if data storage switch:main Item{id:"minecraft:magenta_concrete"} run scoreboard players set #bp_block switch.data 2
execute if data storage switch:main Item{id:"minecraft:light_blue_concrete"} run scoreboard players set #bp_block switch.data 3
execute if data storage switch:main Item{id:"minecraft:yellow_concrete"} run scoreboard players set #bp_block switch.data 4
execute if data storage switch:main Item{id:"minecraft:lime_concrete"} run scoreboard players set #bp_block switch.data 5
execute if data storage switch:main Item{id:"minecraft:pink_concrete"} run scoreboard players set #bp_block switch.data 6
execute if data storage switch:main Item{id:"minecraft:gray_concrete"} run scoreboard players set #bp_block switch.data 7
execute if data storage switch:main Item{id:"minecraft:light_gray_concrete"} run scoreboard players set #bp_block switch.data 8
execute if data storage switch:main Item{id:"minecraft:cyan_concrete"} run scoreboard players set #bp_block switch.data 9
execute if data storage switch:main Item{id:"minecraft:purple_concrete"} run scoreboard players set #bp_block switch.data 10
execute if data storage switch:main Item{id:"minecraft:blue_concrete"} run scoreboard players set #bp_block switch.data 11
execute if data storage switch:main Item{id:"minecraft:brown_concrete"} run scoreboard players set #bp_block switch.data 12
execute if data storage switch:main Item{id:"minecraft:green_concrete"} run scoreboard players set #bp_block switch.data 13
execute if data storage switch:main Item{id:"minecraft:red_concrete"} run scoreboard players set #bp_block switch.data 14
execute if data storage switch:main Item{id:"minecraft:black_concrete"} run scoreboard players set #bp_block switch.data 15
execute if score #bp_block switch.data matches -2 run return run function switch:modes/block_party/core/pick_failed {reason:"the palette block is not one of the 17 colors"}
return 1

