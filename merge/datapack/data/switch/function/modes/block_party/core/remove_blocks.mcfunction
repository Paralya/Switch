
# Schedule a new round
scoreboard players set #block_party_ticks switch.data -160
scoreboard players add #block_party_round switch.data 1

# Switch case to remove blocks (110008 263 110008 => 110072 263 110072)
execute if score #bp_block switch.data matches -1 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_white_terracotta
execute if score #bp_block switch.data matches 0 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_white_concrete
execute if score #bp_block switch.data matches 1 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_orange
execute if score #bp_block switch.data matches 2 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_magenta
execute if score #bp_block switch.data matches 3 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_light_blue
execute if score #bp_block switch.data matches 4 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_yellow
execute if score #bp_block switch.data matches 5 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_lime
execute if score #bp_block switch.data matches 6 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_pink
execute if score #bp_block switch.data matches 7 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_gray
execute if score #bp_block switch.data matches 8 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_light_gray
execute if score #bp_block switch.data matches 9 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_cyan
execute if score #bp_block switch.data matches 10 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_purple
execute if score #bp_block switch.data matches 11 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_blue
execute if score #bp_block switch.data matches 12 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_brown
execute if score #bp_block switch.data matches 13 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_green
execute if score #bp_block switch.data matches 14 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_red
execute if score #bp_block switch.data matches 15 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_black

