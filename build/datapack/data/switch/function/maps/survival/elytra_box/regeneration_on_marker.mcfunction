
#> switch:maps/survival/elytra_box/regeneration_on_marker
#
# @within	switch:maps/survival/elytra_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_elytra_box_y switch.data

execute if score #rg_elytra_box_mod switch.data matches 0 at @s in switch:game run particle cloud 6006 ~0.5 6079 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 6000 6012 ~ 6159 to switch:game 6000 ~0 6000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 1 at @s in switch:game run particle cloud 6018 ~0.5 6079 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 6012 ~ 6000 6025 ~ 6159 to switch:game 6012 ~0 6000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 2 at @s in switch:game run particle cloud 6031 ~0.5 6079 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 2 at @s run clone from minecraft:overworld 6025 ~ 6000 6037 ~ 6159 to switch:game 6025 ~0 6000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 3 at @s in switch:game run particle cloud 6043 ~0.5 6079 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 3 at @s run clone from minecraft:overworld 6037 ~ 6000 6050 ~ 6159 to switch:game 6037 ~0 6000 strict replace force

execute if score #rg_elytra_box_mod switch.data matches 4 at @s in switch:game run particle cloud 6056 ~0.5 6079 6 0 39 0 250 force
execute if score #rg_elytra_box_mod switch.data matches 4 at @s run clone from minecraft:overworld 6050 ~ 6000 6062 ~ 6159 to switch:game 6050 ~0 6000 strict replace force

scoreboard players add #rg_elytra_box_mod switch.data 1
execute if score #rg_elytra_box_mod switch.data matches 5 in switch:game run kill @e[type=item,x=6031,y=100,z=6079,distance=..1000]
execute if score #rg_elytra_box_mod switch.data matches 5 run scoreboard players add #rg_elytra_box_y switch.data 1
execute if score #rg_elytra_box_mod switch.data matches 5 run scoreboard players set #rg_elytra_box_mod switch.data 0

kill @s

