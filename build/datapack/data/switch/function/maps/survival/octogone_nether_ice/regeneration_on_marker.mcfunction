
#> switch:maps/survival/octogone_nether_ice/regeneration_on_marker
#
# @within	switch:maps/survival/octogone_nether_ice/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_octogone_nether_ice_y switch.data

execute if score #rg_octogone_nether_ice_mod switch.data matches 0 at @s in switch:game run particle cloud 160010 ~0.5 160040 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 0 at @s run clone from minecraft:overworld 160000 ~ 160000 160020 ~ 160080 to switch:game 160000 ~0 160000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 1 at @s in switch:game run particle cloud 160030 ~0.5 160040 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 1 at @s run clone from minecraft:overworld 160020 ~ 160000 160040 ~ 160080 to switch:game 160020 ~0 160000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 2 at @s in switch:game run particle cloud 160050 ~0.5 160040 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 2 at @s run clone from minecraft:overworld 160040 ~ 160000 160060 ~ 160080 to switch:game 160040 ~0 160000 strict replace force

execute if score #rg_octogone_nether_ice_mod switch.data matches 3 at @s in switch:game run particle cloud 160070 ~0.5 160040 10 0 20 0 250 force
execute if score #rg_octogone_nether_ice_mod switch.data matches 3 at @s run clone from minecraft:overworld 160060 ~ 160000 160080 ~ 160080 to switch:game 160060 ~0 160000 strict replace force

scoreboard players add #rg_octogone_nether_ice_mod switch.data 1
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 in switch:game run kill @e[type=item,x=160040,y=100,z=160040,distance=..1000]
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 run scoreboard players add #rg_octogone_nether_ice_y switch.data 1
execute if score #rg_octogone_nether_ice_mod switch.data matches 4 run scoreboard players set #rg_octogone_nether_ice_mod switch.data 0

kill @s

