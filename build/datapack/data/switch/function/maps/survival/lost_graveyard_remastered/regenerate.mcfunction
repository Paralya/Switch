
#> switch:maps/survival/lost_graveyard_remastered/regenerate
#
# @within	switch:maps/survival/lost_graveyard_remastered/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_lost_graveyard_remastered switch.data 1
execute if score #rg_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:maps to_regenerate.lost_graveyard_remastered set value 2b
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2000 10000 2019 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2000 10000 2019 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2019 10000 2038 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2019 10000 2038 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2038 10000 2056 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2038 10000 2056 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2056 10000 2075 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2056 10000 2075 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2075 10000 2094 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2075 10000 2094 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2094 10000 2112 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2094 10000 2112 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2112 10000 2131 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2112 10000 2131 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 2131 10000 2150 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 2131 10000 2150 10134

execute if score #rg_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #rg_lost_graveyard_remastered_y switch.data 100
execute if score #rg_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #rg_lost_graveyard_remastered_mod switch.data 0
execute if score #rg_lost_graveyard_remastered switch.data matches ..504 summon marker run function switch:maps/survival/lost_graveyard_remastered/regeneration_on_marker

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run kill @e[type=item,x=2075,y=100,z=10067,distance=..1000]
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run data remove storage switch:maps to_regenerate.lost_graveyard_remastered

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2000 10000 2019 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2000 10000 2019 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2019 10000 2038 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2019 10000 2038 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2038 10000 2056 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2038 10000 2056 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2056 10000 2075 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2056 10000 2075 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2075 10000 2094 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2075 10000 2094 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2094 10000 2112 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2094 10000 2112 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2112 10000 2131 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2112 10000 2131 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 2131 10000 2150 10134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 2131 10000 2150 10134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Lost Graveyard Remastered","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run function switch:engine/log_message/apply {message:"Map `Lost Graveyard Remastered` just regenerated!"}

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run scoreboard players reset #rg_lost_graveyard_remastered switch.data
execute if score #rg_lost_graveyard_remastered switch.data matches 1.. run schedule function switch:maps/survival/lost_graveyard_remastered/regenerate 1t

