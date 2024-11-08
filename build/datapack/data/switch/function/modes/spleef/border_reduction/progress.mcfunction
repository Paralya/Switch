
#> switch:modes/spleef/border_reduction/progress
#
# @within	switch:modes/spleef/tick
#

# Fill snow blocks with air
execute if score #border_side switch.data matches 0 run fill ~ ~ ~ ~ ~-12 ~20 air replace snow_block
execute if score #border_side switch.data matches 1 run fill ~ ~ ~ ~-20 ~-12 ~ air replace snow_block
execute if score #border_side switch.data matches 2 run fill ~ ~ ~ ~ ~-12 ~-20 air replace snow_block
execute if score #border_side switch.data matches 3 run fill ~ ~ ~ ~20 ~-12 ~ air replace snow_block
scoreboard players add #border_progress switch.data 1
particle glow ~ ~-12 ~ 0.2 6 0.2 0 200 force


# Flip side if there is no remaining blocks
execute if score #border_progress switch.data >= #border_remaining_side switch.data run scoreboard players add #border_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data if score #border_side switch.data matches 3 run scoreboard players remove #border_remaining_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data if score #border_side switch.data matches 1 run scoreboard players remove #border_remaining_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data run scoreboard players reset #border_progress switch.data


# First side and add a lap
execute if score #border_side switch.data matches 4 run scoreboard players add #border_laps switch.data 1
scoreboard players operation #border_side switch.data %= #4 switch.data


# Depending on current side, move on
execute if score #border_side switch.data matches 0 run tp @s ~-1 ~ ~
execute if score #border_side switch.data matches 1 run tp @s ~ ~ ~-1
execute if score #border_side switch.data matches 2 run tp @s ~1 ~ ~
execute if score #border_side switch.data matches 3 run tp @s ~ ~ ~1

# Stop when there are only 16 blocks left
execute if score #spleef_seconds switch.data matches ..90 if score #border_remaining_side switch.data matches ..15 run scoreboard players set #border_remaining_side switch.data 16
execute if score #spleef_seconds switch.data matches 90.. if score #border_remaining_side switch.data matches ..5 run scoreboard players set #border_remaining_side switch.data 16

