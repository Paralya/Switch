
#> switch:maps/survival/block_party_lobby/regenerate
#
# @within	switch:maps/survival/block_party_lobby/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_block_party_lobby switch.data 1
execute if score #rg_block_party_lobby switch.data matches 1 run data modify storage switch:maps to_regenerate.block_party_lobby set value 2b
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131000 131000 131018 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131000 131000 131018 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131018 131000 131037 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131018 131000 131037 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131037 131000 131056 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131037 131000 131056 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131056 131000 131074 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131056 131000 131074 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131074 131000 131092 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131074 131000 131092 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131092 131000 131111 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131092 131000 131111 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131111 131000 131130 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131111 131000 131130 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131130 131000 131148 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131130 131000 131148 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131148 131000 131166 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131148 131000 131166 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131166 131000 131185 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131166 131000 131185 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131185 131000 131204 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131185 131000 131204 131148
execute if score #rg_block_party_lobby switch.data matches 1 in minecraft:overworld run forceload add 131204 131000 131222 131148
execute if score #rg_block_party_lobby switch.data matches 1 in switch:game run forceload add 131204 131000 131222 131148

execute if score #rg_block_party_lobby switch.data matches 1 run scoreboard players set #rg_block_party_lobby_y switch.data 0
execute if score #rg_block_party_lobby switch.data matches 1 run scoreboard players set #rg_block_party_lobby_mod switch.data 0
execute if score #rg_block_party_lobby switch.data matches ..960 summon marker run function switch:maps/survival/block_party_lobby/regeneration_on_marker

execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run kill @e[type=item,x=131111,y=0,z=131074,distance=..1000]
execute if score #rg_block_party_lobby switch.data matches 961.. run data remove storage switch:maps to_regenerate.block_party_lobby

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131000 131000 131018 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131000 131000 131018 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131018 131000 131037 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131018 131000 131037 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131037 131000 131056 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131037 131000 131056 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131056 131000 131074 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131056 131000 131074 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131074 131000 131092 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131074 131000 131092 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131092 131000 131111 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131092 131000 131111 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131111 131000 131130 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131111 131000 131130 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131130 131000 131148 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131130 131000 131148 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131148 131000 131166 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131148 131000 131166 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131166 131000 131185 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131166 131000 131185 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131185 131000 131204 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131185 131000 131204 131148

execute if score #rg_block_party_lobby switch.data matches 961.. in minecraft:overworld run forceload remove 131204 131000 131222 131148
execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run forceload remove 131204 131000 131222 131148

execute if score #rg_block_party_lobby switch.data matches 961.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"block_party_lobby","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"48","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_block_party_lobby switch.data matches 961.. run data modify storage switch:main MessageToLog set value '{"text":"Map `block_party_lobby` just regenerated!"}'
execute if score #rg_block_party_lobby switch.data matches 961.. run function switch:engine/log_message/apply

execute if score #rg_block_party_lobby switch.data matches 961.. in switch:game run function switch:maps/regenerate_doors_macro {name:"block_party_lobby"}
execute if score #rg_block_party_lobby switch.data matches 961.. run scoreboard players reset #rg_block_party_lobby switch.data
execute if score #rg_block_party_lobby switch.data matches 1.. run schedule function switch:maps/survival/block_party_lobby/regenerate 1t

