
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 27970 27970 28030 28030

execute if score #regeneration_ticks switch.data matches 20 positioned 28000 105 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 21 positioned 28000 104 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 22 positioned 28000 103 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 23 positioned 28000 102 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 24 positioned 28000 101 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 25 positioned 28000 100 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 26 positioned 28000 99 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 27 positioned 28000 98 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 28 positioned 28000 97 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 29 positioned 28000 96 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 30 positioned 28000 95 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 31 positioned 28000 94 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 32 positioned 28000 93 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 33 positioned 28000 92 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 34 positioned 28000 91 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 35 positioned 28000 90 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 36 positioned 28000 89 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air
execute if score #regeneration_ticks switch.data matches 37 positioned 28000 88 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 air

execute if score #regeneration_ticks switch.data matches 38 positioned 28000 88 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 39 positioned 28000 89 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 40 positioned 28000 90 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 41 positioned 28000 91 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 42 positioned 28000 92 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 43 positioned 28000 93 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 lava
execute if score #regeneration_ticks switch.data matches 44 positioned 28000 96 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 snow_block
execute if score #regeneration_ticks switch.data matches 45 positioned 28000 99 28000 run fill ~-30 ~ ~-30 ~30 ~ ~30 snow_block

execute if score #regeneration_ticks switch.data matches 46 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 46 run forceload remove 27970 27970 28030 28030
execute if score #regeneration_ticks switch.data matches 46 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/spleef_1/regenerate 1t

