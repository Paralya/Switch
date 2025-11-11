
#> switch:maps/survival/stardust_vip_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_vip_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_vip_zone_y switch.data

execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s in switch:game run particle cloud 107011 ~0.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld 107000 ~ 107000 107023 ~ 107085 to switch:game 107000 ~0 107000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s in switch:game run particle cloud 107034 ~0.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld 107023 ~ 107000 107045 ~ 107085 to switch:game 107023 ~0 107000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s in switch:game run particle cloud 107056 ~0.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld 107045 ~ 107000 107068 ~ 107085 to switch:game 107045 ~0 107000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s in switch:game run particle cloud 107079 ~0.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld 107068 ~ 107000 107090 ~ 107085 to switch:game 107068 ~0 107000 strict replace force

execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s in switch:game run particle cloud 107101 ~0.5 107042 11 0 21 0 250 force
execute if score #rg_stardust_vip_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld 107090 ~ 107000 107113 ~ 107085 to switch:game 107090 ~0 107000 strict replace force

scoreboard players add #rg_stardust_vip_zone_mod switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 in switch:game run kill @e[type=item,x=107056,y=100,z=107042,distance=..1000]
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players add #rg_stardust_vip_zone_y switch.data 1
execute if score #rg_stardust_vip_zone_mod switch.data matches 5 run scoreboard players set #rg_stardust_vip_zone_mod switch.data 0

kill @s

