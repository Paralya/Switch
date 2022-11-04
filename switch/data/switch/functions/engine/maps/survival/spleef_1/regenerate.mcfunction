
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 27970 27970 28030 28030

execute if score #regeneration_ticks switch.data matches 20 positioned 28000 99 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 snow_block
execute if score #regeneration_ticks switch.data matches 21 positioned 28000 96 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 snow_block

execute if score #regeneration_ticks switch.data matches 20 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 20 run forceload remove 27970 27970 28030 28030
execute if score #regeneration_ticks switch.data matches 20 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:engine/maps/survival/spleef_1/regenerate 1t

