
## Choose pixel art
# Get the number of pixel arts for the game
scoreboard players set #art_count switch.data 0
execute positioned 0 0 0 run function switch:modes/block_party/core/get_art_count_loop

# Choose a random pixel art for the game which is not the same as the previous one
scoreboard players operation #modulo_rand switch.data = #art_count switch.data
function switch:modes/block_party/core/get_random_number_loop
scoreboard players operation #bp_previous_art switch.data = #random switch.data
scoreboard players operation #bp_selected_art switch.data = #random switch.data

# Teleport current marker to the selected pixel art
tp @s 0 90 0
scoreboard players set #y_pos switch.data 90
scoreboard players operation #y_pos switch.data -= #bp_selected_art switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y_pos switch.data

# Clone the selected pixel art
clone ~ ~ ~ ~63 ~ ~63 ~ 100 ~ replace force

## Choose block
# Get the number of blocks in the pixel art
scoreboard players set #block_count switch.data 0
execute at @s positioned ~ ~ ~65 run function switch:modes/block_party/core/get_block_count_loop

# Choose a random block for the pixel art
scoreboard players operation #modulo_rand switch.data = #block_count switch.data
function switch:math/get_random/
scoreboard players operation #bp_selected_block switch.data = #random switch.data

# Teleport current marker to the selected block
scoreboard players set #z_pos switch.data 65
scoreboard players operation #z_pos switch.data += #bp_selected_block switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z_pos switch.data

# Get the block at the current marker
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
execute at @s run loot insert 0 0 0 mine ~ ~ ~ diamond_pickaxe

## Kill marker
kill @s

