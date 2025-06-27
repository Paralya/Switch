
#> switch:maps/survival/jn_biomes_relief/regeneration_on_marker
#
# @within	switch:maps/survival/jn_biomes_relief/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_biomes_relief_y switch.data

execute if score #rg_jn_biomes_relief_mod switch.data matches 0 at @s in switch:game run particle cloud 141010 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 0 at @s run clone from minecraft:overworld 141000 ~ 141000 141020 ~ 141139 to switch:game 141000 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 1 at @s in switch:game run particle cloud 141030 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 1 at @s run clone from minecraft:overworld 141020 ~ 141000 141040 ~ 141139 to switch:game 141020 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 2 at @s in switch:game run particle cloud 141049 ~0.5 141069 9 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 2 at @s run clone from minecraft:overworld 141040 ~ 141000 141059 ~ 141139 to switch:game 141040 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 3 at @s in switch:game run particle cloud 141069 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 3 at @s run clone from minecraft:overworld 141059 ~ 141000 141079 ~ 141139 to switch:game 141059 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 4 at @s in switch:game run particle cloud 141089 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 4 at @s run clone from minecraft:overworld 141079 ~ 141000 141099 ~ 141139 to switch:game 141079 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 5 at @s in switch:game run particle cloud 141109 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 5 at @s run clone from minecraft:overworld 141099 ~ 141000 141119 ~ 141139 to switch:game 141099 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 6 at @s in switch:game run particle cloud 141129 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 6 at @s run clone from minecraft:overworld 141119 ~ 141000 141139 ~ 141139 to switch:game 141119 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 7 at @s in switch:game run particle cloud 141148 ~0.5 141069 9 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 7 at @s run clone from minecraft:overworld 141139 ~ 141000 141158 ~ 141139 to switch:game 141139 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 8 at @s in switch:game run particle cloud 141168 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 8 at @s run clone from minecraft:overworld 141158 ~ 141000 141178 ~ 141139 to switch:game 141158 ~0 141000 replace force

execute if score #rg_jn_biomes_relief_mod switch.data matches 9 at @s in switch:game run particle cloud 141188 ~0.5 141069 10 0 34 0 250 force
execute if score #rg_jn_biomes_relief_mod switch.data matches 9 at @s run clone from minecraft:overworld 141178 ~ 141000 141198 ~ 141139 to switch:game 141178 ~0 141000 replace force

scoreboard players add #rg_jn_biomes_relief_mod switch.data 1
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 in switch:game run kill @e[type=item,x=141099,y=100,z=141069,distance=..1000]
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 run scoreboard players add #rg_jn_biomes_relief_y switch.data 1
execute if score #rg_jn_biomes_relief_mod switch.data matches 10 run scoreboard players set #rg_jn_biomes_relief_mod switch.data 0

kill @s

