
#> switch:maps/survival/lost_graveyard_remastered/regenerate
#
# @within	switch:maps/survival/lost_graveyard_remastered/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_lost_graveyard_remastered switch.data 1
execute if score #rg_lost_graveyard_remastered switch.data matches 1 run data modify storage switch:maps to_regenerate.lost_graveyard_remastered set value 2b
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127000 127000 127019 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127000 127000 127019 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127019 127000 127038 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127019 127000 127038 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127038 127000 127056 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127038 127000 127056 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127056 127000 127075 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127056 127000 127075 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127075 127000 127094 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127075 127000 127094 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127094 127000 127112 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127094 127000 127112 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127112 127000 127131 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127112 127000 127131 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in minecraft:overworld run forceload add 127131 127000 127150 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 1 in switch:game run forceload add 127131 127000 127150 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #rg_lost_graveyard_remastered_y switch.data 100
execute if score #rg_lost_graveyard_remastered switch.data matches 1 run scoreboard players set #rg_lost_graveyard_remastered_mod switch.data 0
execute if score #rg_lost_graveyard_remastered switch.data matches ..504 summon marker run function switch:maps/survival/lost_graveyard_remastered/regeneration_on_marker

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run kill @e[type=item,x=127075,y=100,z=127067,distance=..1000]
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run data remove storage switch:maps to_regenerate.lost_graveyard_remastered

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127000 127000 127019 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127000 127000 127019 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127019 127000 127038 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127019 127000 127038 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127038 127000 127056 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127038 127000 127056 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127056 127000 127075 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127056 127000 127075 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127075 127000 127094 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127075 127000 127094 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127094 127000 127112 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127094 127000 127112 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127112 127000 127131 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127112 127000 127131 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in minecraft:overworld run forceload remove 127131 127000 127150 127134
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run forceload remove 127131 127000 127150 127134

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"lost_graveyard_remastered","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"25","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run data modify storage switch:main MessageToLog set value '{"text":"Map `lost_graveyard_remastered` just regenerated!"}'
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run function switch:engine/log_message/apply

execute if score #rg_lost_graveyard_remastered switch.data matches 505.. in switch:game run function switch:maps/regenerate_doors_macro {name:"lost_graveyard_remastered"}
execute if score #rg_lost_graveyard_remastered switch.data matches 505.. run scoreboard players reset #rg_lost_graveyard_remastered switch.data
execute if score #rg_lost_graveyard_remastered switch.data matches 1.. run schedule function switch:maps/survival/lost_graveyard_remastered/regenerate 1t

