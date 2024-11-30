
#> switch:modes/block_party/core/paint_cow
#
# @within	switch:modes/block_party/tick
#

## Function executed as and at the paint cow

# Depending on the color, change the ground
execute if score #bp_block switch.data matches -1 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 white_terracotta replace #switch:block_party/all
execute if score #bp_block switch.data matches 0 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 white_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 1 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 orange_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 2 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 magenta_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 3 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_blue_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 4 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 yellow_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 5 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 lime_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 6 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 pink_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 7 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 gray_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 8 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_gray_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 9 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 cyan_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 10 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 purple_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 11 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 blue_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 12 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 brown_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 13 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 green_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 14 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 red_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 15 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 black_concrete replace #switch:block_party/all

# Summon marker to know what players survived because of the paint cow
summon marker ~ ~ ~ {Tags:["switch.paint_marker"]}

# Kill paint cow and explode
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound switch:explosion block @a[tag=!detached]
kill @s

