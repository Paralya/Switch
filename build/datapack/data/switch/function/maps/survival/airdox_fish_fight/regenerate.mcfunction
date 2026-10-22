
#> switch:maps/survival/airdox_fish_fight/regenerate
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_airdox_fish_fight switch.data 1
execute if score #rg_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_regenerate.airdox_fish_fight set value 2b
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 0 -12000 17 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 0 -12000 17 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 17 -12000 34 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 17 -12000 34 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 34 -12000 51 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 34 -12000 51 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 51 -12000 68 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 51 -12000 68 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 68 -12000 84 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 68 -12000 84 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 84 -12000 101 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 84 -12000 101 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 101 -12000 118 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 101 -12000 118 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 118 -12000 135 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 118 -12000 135 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 135 -12000 152 -11849
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 135 -12000 152 -11849

execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_y switch.data 100
execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0
execute if score #rg_airdox_fish_fight switch.data matches ..900 summon marker run function switch:maps/survival/airdox_fish_fight/regeneration_on_marker

execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run kill @e[type=item,x=76,y=100,z=-11924,distance=..1000]
execute if score #rg_airdox_fish_fight switch.data matches 901.. run data remove storage switch:maps to_regenerate.airdox_fish_fight

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 0 -12000 17 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 0 -12000 17 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 17 -12000 34 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 17 -12000 34 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 34 -12000 51 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 34 -12000 51 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 51 -12000 68 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 51 -12000 68 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 68 -12000 84 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 68 -12000 84 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 84 -12000 101 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 84 -12000 101 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 101 -12000 118 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 101 -12000 118 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 118 -12000 135 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 118 -12000 135 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 135 -12000 152 -11849
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 135 -12000 152 -11849

execute if score #rg_airdox_fish_fight switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Dinosaur Volcano","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_airdox_fish_fight switch.data matches 901.. run function switch:engine/log_message/apply {message:"Map `Dinosaur Volcano` just regenerated!"}

execute if score #rg_airdox_fish_fight switch.data matches 901.. run scoreboard players reset #rg_airdox_fish_fight switch.data
execute if score #rg_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/regenerate 1t

