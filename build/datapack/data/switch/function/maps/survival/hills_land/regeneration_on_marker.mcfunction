
#> switch:maps/survival/hills_land/regeneration_on_marker
#
# @within	switch:maps/survival/hills_land/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_hills_land_y switch.data

execute if score #rg_hills_land_mod switch.data matches 0 at @s in switch:game run particle cloud 20338 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 0 at @s run clone from minecraft:overworld 20332 ~ 19983 20345 ~ 20210 to switch:game 20332 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 1 at @s in switch:game run particle cloud 20351 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 1 at @s run clone from minecraft:overworld 20345 ~ 19983 20358 ~ 20210 to switch:game 20345 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 2 at @s in switch:game run particle cloud 20364 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 2 at @s run clone from minecraft:overworld 20358 ~ 19983 20371 ~ 20210 to switch:game 20358 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 3 at @s in switch:game run particle cloud 20377 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 3 at @s run clone from minecraft:overworld 20371 ~ 19983 20384 ~ 20210 to switch:game 20371 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 4 at @s in switch:game run particle cloud 20390 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 4 at @s run clone from minecraft:overworld 20384 ~ 19983 20396 ~ 20210 to switch:game 20384 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 5 at @s in switch:game run particle cloud 20402 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 5 at @s run clone from minecraft:overworld 20396 ~ 19983 20409 ~ 20210 to switch:game 20396 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 6 at @s in switch:game run particle cloud 20415 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 6 at @s run clone from minecraft:overworld 20409 ~ 19983 20422 ~ 20210 to switch:game 20409 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 7 at @s in switch:game run particle cloud 20428 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 7 at @s run clone from minecraft:overworld 20422 ~ 19983 20435 ~ 20210 to switch:game 20422 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 8 at @s in switch:game run particle cloud 20441 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 8 at @s run clone from minecraft:overworld 20435 ~ 19983 20448 ~ 20210 to switch:game 20435 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 9 at @s in switch:game run particle cloud 20454 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 9 at @s run clone from minecraft:overworld 20448 ~ 19983 20461 ~ 20210 to switch:game 20448 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 10 at @s in switch:game run particle cloud 20467 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 10 at @s run clone from minecraft:overworld 20461 ~ 19983 20474 ~ 20210 to switch:game 20461 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 11 at @s in switch:game run particle cloud 20480 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 11 at @s run clone from minecraft:overworld 20474 ~ 19983 20487 ~ 20210 to switch:game 20474 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 12 at @s in switch:game run particle cloud 20493 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 12 at @s run clone from minecraft:overworld 20487 ~ 19983 20500 ~ 20210 to switch:game 20487 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 13 at @s in switch:game run particle cloud 20506 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 13 at @s run clone from minecraft:overworld 20500 ~ 19983 20512 ~ 20210 to switch:game 20500 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 14 at @s in switch:game run particle cloud 20518 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 14 at @s run clone from minecraft:overworld 20512 ~ 19983 20525 ~ 20210 to switch:game 20512 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 15 at @s in switch:game run particle cloud 20531 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 15 at @s run clone from minecraft:overworld 20525 ~ 19983 20538 ~ 20210 to switch:game 20525 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 16 at @s in switch:game run particle cloud 20544 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 16 at @s run clone from minecraft:overworld 20538 ~ 19983 20551 ~ 20210 to switch:game 20538 ~0 19983 replace force

execute if score #rg_hills_land_mod switch.data matches 17 at @s in switch:game run particle cloud 20557 ~0.5 20096 6 0 56 0 250 force
execute if score #rg_hills_land_mod switch.data matches 17 at @s run clone from minecraft:overworld 20551 ~ 19983 20564 ~ 20210 to switch:game 20551 ~0 19983 replace force

scoreboard players add #rg_hills_land_mod switch.data 1
execute if score #rg_hills_land_mod switch.data matches 18 in switch:game run kill @e[type=item,x=20448,y=85,z=20096,distance=..1000]
execute if score #rg_hills_land_mod switch.data matches 18 run scoreboard players add #rg_hills_land_y switch.data 1
execute if score #rg_hills_land_mod switch.data matches 18 run scoreboard players set #rg_hills_land_mod switch.data 0

kill @s

