
## Function executed as and at the paint cow

# Depending on the color, change the ground
execute if score #bp_block switch.data matches 0 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 white_concrete
execute if score #bp_block switch.data matches 1 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 orange_concrete
execute if score #bp_block switch.data matches 2 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 magenta_concrete
execute if score #bp_block switch.data matches 3 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_blue_concrete
execute if score #bp_block switch.data matches 4 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 yellow_concrete
execute if score #bp_block switch.data matches 5 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 lime_concrete
execute if score #bp_block switch.data matches 6 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 pink_concrete
execute if score #bp_block switch.data matches 7 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 gray_concrete
execute if score #bp_block switch.data matches 8 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_gray_concrete
execute if score #bp_block switch.data matches 9 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 cyan_concrete
execute if score #bp_block switch.data matches 10 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 purple_concrete
execute if score #bp_block switch.data matches 11 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 blue_concrete
execute if score #bp_block switch.data matches 12 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 brown_concrete
execute if score #bp_block switch.data matches 13 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 green_concrete
execute if score #bp_block switch.data matches 14 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 red_concrete
execute if score #bp_block switch.data matches 15 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 black_concrete

# Kill paint cow and explode
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode block @a
kill @s

