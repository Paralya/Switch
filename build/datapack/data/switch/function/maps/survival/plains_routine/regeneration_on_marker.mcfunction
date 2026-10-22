
#> switch:maps/survival/plains_routine/regeneration_on_marker
#
# @within	switch:maps/survival/plains_routine/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_plains_routine_y switch.data

execute if score #rg_plains_routine_mod switch.data matches 0 at @s in switch:game run particle cloud 6696 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 0 at @s run clone from minecraft:overworld 6689 ~ -5649 6704 ~ -5465 to switch:game 6689 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 1 at @s in switch:game run particle cloud 6712 ~0.5 -5557 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 1 at @s run clone from minecraft:overworld 6704 ~ -5649 6720 ~ -5465 to switch:game 6704 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 2 at @s in switch:game run particle cloud 6727 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 2 at @s run clone from minecraft:overworld 6720 ~ -5649 6735 ~ -5465 to switch:game 6720 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 3 at @s in switch:game run particle cloud 6742 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 3 at @s run clone from minecraft:overworld 6735 ~ -5649 6750 ~ -5465 to switch:game 6735 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 4 at @s in switch:game run particle cloud 6757 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 4 at @s run clone from minecraft:overworld 6750 ~ -5649 6765 ~ -5465 to switch:game 6750 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 5 at @s in switch:game run particle cloud 6773 ~0.5 -5557 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 5 at @s run clone from minecraft:overworld 6765 ~ -5649 6781 ~ -5465 to switch:game 6765 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 6 at @s in switch:game run particle cloud 6788 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 6 at @s run clone from minecraft:overworld 6781 ~ -5649 6796 ~ -5465 to switch:game 6781 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 7 at @s in switch:game run particle cloud 6803 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 7 at @s run clone from minecraft:overworld 6796 ~ -5649 6811 ~ -5465 to switch:game 6796 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 8 at @s in switch:game run particle cloud 6818 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 8 at @s run clone from minecraft:overworld 6811 ~ -5649 6826 ~ -5465 to switch:game 6811 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 9 at @s in switch:game run particle cloud 6834 ~0.5 -5557 8 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 9 at @s run clone from minecraft:overworld 6826 ~ -5649 6842 ~ -5465 to switch:game 6826 ~0 -5649 strict replace force

execute if score #rg_plains_routine_mod switch.data matches 10 at @s in switch:game run particle cloud 6849 ~0.5 -5557 7 0 46 0 250 force
execute if score #rg_plains_routine_mod switch.data matches 10 at @s run clone from minecraft:overworld 6842 ~ -5649 6857 ~ -5465 to switch:game 6842 ~0 -5649 strict replace force

scoreboard players add #rg_plains_routine_mod switch.data 1
execute if score #rg_plains_routine_mod switch.data matches 11 in switch:game run kill @e[type=item,x=6773,y=85,z=-5557,distance=..1000]
execute if score #rg_plains_routine_mod switch.data matches 11 run scoreboard players add #rg_plains_routine_y switch.data 1
execute if score #rg_plains_routine_mod switch.data matches 11 run scoreboard players set #rg_plains_routine_mod switch.data 0

kill @s

