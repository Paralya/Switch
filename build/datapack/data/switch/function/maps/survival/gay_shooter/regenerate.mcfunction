
#> switch:maps/survival/gay_shooter/regenerate
#
# @within	switch:maps/survival/gay_shooter/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_gay_shooter switch.data 1
execute if score #rg_gay_shooter switch.data matches 1 run data modify storage switch:maps to_regenerate.gay_shooter set value 2b
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10000 -10000 10023 -9942
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 10000 -10000 10023 -9942
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10023 -10000 10047 -9942
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 10023 -10000 10047 -9942
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 10047 -10000 10070 -9942
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 10047 -10000 10070 -9942

execute if score #rg_gay_shooter switch.data matches 1 run scoreboard players set #rg_gay_shooter_y switch.data 100
execute if score #rg_gay_shooter switch.data matches 1 run scoreboard players set #rg_gay_shooter_mod switch.data 0
execute if score #rg_gay_shooter switch.data matches ..150 summon marker run function switch:maps/survival/gay_shooter/regeneration_on_marker

execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run kill @e[type=item,x=10035,y=100,z=-9971,distance=..1000]
execute if score #rg_gay_shooter switch.data matches 151.. run data remove storage switch:maps to_regenerate.gay_shooter

execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 10000 -10000 10023 -9942
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 10000 -10000 10023 -9942
execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 10023 -10000 10047 -9942
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 10023 -10000 10047 -9942
execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 10047 -10000 10070 -9942
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 10047 -10000 10070 -9942

execute if score #rg_gay_shooter switch.data matches 151.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Guy Shooter","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_gay_shooter switch.data matches 151.. run function switch:engine/log_message/apply {message:"Map `Guy Shooter` just regenerated!"}

execute if score #rg_gay_shooter switch.data matches 151.. run scoreboard players reset #rg_gay_shooter switch.data
execute if score #rg_gay_shooter switch.data matches 1.. run schedule function switch:maps/survival/gay_shooter/regenerate 1t

