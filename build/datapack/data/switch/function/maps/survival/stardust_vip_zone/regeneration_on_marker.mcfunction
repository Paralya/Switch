
#> switch:maps/survival/stardust_vip_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_vip_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_vip_zone_y switch.data

execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s in switch:game run particle cloud 11 ~0.5 -9958 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ -10000 23 ~ -9915 to switch:game 0 ~0 -10000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s in switch:game run particle cloud 34 ~0.5 -9958 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld 23 ~ -10000 45 ~ -9915 to switch:game 23 ~0 -10000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s in switch:game run particle cloud 56 ~0.5 -9958 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld 45 ~ -10000 68 ~ -9915 to switch:game 45 ~0 -10000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s in switch:game run particle cloud 79 ~0.5 -9958 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld 68 ~ -10000 90 ~ -9915 to switch:game 68 ~0 -10000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s in switch:game run particle cloud 101 ~0.5 -9958 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld 90 ~ -10000 113 ~ -9915 to switch:game 90 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_vip_zone_mod switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 in switch:game run kill @e[type=item,x=56,y=100,z=-9957,distance=..1000]
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players add #rg_stardust_vip_zone_y switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players set #rg_stardust_vip_zone_mod switch.data 0

kill @s

