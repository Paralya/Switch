
#> switch:maps/survival/stardust_vip_zone/regenerate
#
# @within	switch:maps/survival/stardust_vip_zone/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_vip_zone switch.data 1
execute if score #rg_stardust_vip_zone switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_vip_zone set value 2b
execute if score #rg_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 0 -10000 23 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 0 -10000 23 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 23 -10000 45 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 23 -10000 45 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 45 -10000 68 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 45 -10000 68 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 68 -10000 90 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 68 -10000 90 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in minecraft:overworld run forceload add 90 -10000 113 -9915
execute if score #rg_stardust_vip_zone switch.data matches 1 in switch:game run forceload add 90 -10000 113 -9915

execute if score #rg_stardust_vip_zone switch.data matches 1 run scoreboard players set #rg_stardust_vip_zone_y switch.data 100
execute if score #rg_stardust_vip_zone switch.data matches 1 run scoreboard players set #rg_stardust_vip_zone_mod switch.data 0
execute if score #rg_stardust_vip_zone switch.data matches ..255 summon marker run function switch:maps/survival/stardust_vip_zone/regeneration_on_marker

execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run kill @e[type=item,x=56,y=100,z=-9957,distance=..1000]
execute if score #rg_stardust_vip_zone switch.data matches 256.. run data remove storage switch:maps to_regenerate.stardust_vip_zone

execute if score #rg_stardust_vip_zone switch.data matches 256.. in minecraft:overworld run forceload remove 0 -10000 23 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run forceload remove 0 -10000 23 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in minecraft:overworld run forceload remove 23 -10000 45 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run forceload remove 23 -10000 45 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in minecraft:overworld run forceload remove 45 -10000 68 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run forceload remove 45 -10000 68 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in minecraft:overworld run forceload remove 68 -10000 90 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run forceload remove 68 -10000 90 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in minecraft:overworld run forceload remove 90 -10000 113 -9915
execute if score #rg_stardust_vip_zone switch.data matches 256.. in switch:game run forceload remove 90 -10000 113 -9915

execute if score #rg_stardust_vip_zone switch.data matches 256.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust VIP Zone","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_vip_zone switch.data matches 256.. run function switch:engine/log_message/apply {message:"Map `Stardust VIP Zone` just regenerated!"}

execute if score #rg_stardust_vip_zone switch.data matches 256.. run scoreboard players reset #rg_stardust_vip_zone switch.data
execute if score #rg_stardust_vip_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_vip_zone/regenerate 1t

