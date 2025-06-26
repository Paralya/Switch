
#> switch:maps/survival/stardust_spawn/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_spawn/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_spawn_y switch.data

execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s in switch:game run particle cloud 101010 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 0 at @s run clone from minecraft:overworld 101000 ~ 101000 101020 ~ 101120 to switch:game 101000 ~0 101000 replace force

execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s in switch:game run particle cloud 101030 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 1 at @s run clone from minecraft:overworld 101020 ~ 101000 101040 ~ 101120 to switch:game 101020 ~0 101000 replace force

execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s in switch:game run particle cloud 101050 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 2 at @s run clone from minecraft:overworld 101040 ~ 101000 101060 ~ 101120 to switch:game 101040 ~0 101000 replace force

execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s in switch:game run particle cloud 101070 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 3 at @s run clone from minecraft:overworld 101060 ~ 101000 101080 ~ 101120 to switch:game 101060 ~0 101000 replace force

execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s in switch:game run particle cloud 101090 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 4 at @s run clone from minecraft:overworld 101080 ~ 101000 101100 ~ 101120 to switch:game 101080 ~0 101000 replace force

execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s in switch:game run particle cloud 101110 ~0.5 101060 10 0 30 0 250 force
execute if score #rg_stardust_spawn_mod switch.data matches 5 at @s run clone from minecraft:overworld 101100 ~ 101000 101120 ~ 101120 to switch:game 101100 ~0 101000 replace force

scoreboard players add #rg_stardust_spawn_mod switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 in switch:game run kill @e[type=item,x=101060,y=100,z=101060,distance=..1000]
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players add #rg_stardust_spawn_y switch.data 1
execute if score #rg_stardust_spawn_mod switch.data matches 6 run scoreboard players set #rg_stardust_spawn_mod switch.data 0

kill @s

