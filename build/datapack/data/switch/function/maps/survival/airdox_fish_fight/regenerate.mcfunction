
#> switch:maps/survival/airdox_fish_fight/regenerate
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_airdox_fish_fight switch.data 1
execute if score #rg_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_regenerate.airdox_fish_fight set value 2b
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156000 156000 156017 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156000 156000 156017 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156017 156000 156034 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156017 156000 156034 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156034 156000 156051 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156034 156000 156051 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156051 156000 156068 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156051 156000 156068 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156068 156000 156084 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156068 156000 156084 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156084 156000 156101 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156084 156000 156101 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156101 156000 156118 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156101 156000 156118 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156118 156000 156135 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156118 156000 156135 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156135 156000 156152 156151
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156135 156000 156152 156151

execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_y switch.data 100
execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0
execute if score #rg_airdox_fish_fight switch.data matches ..900 summon marker run function switch:maps/survival/airdox_fish_fight/regeneration_on_marker

execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run kill @e[type=item,x=156076,y=100,z=156075,distance=..1000]
execute if score #rg_airdox_fish_fight switch.data matches 901.. run data remove storage switch:maps to_regenerate.airdox_fish_fight

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156000 156000 156017 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156000 156000 156017 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156017 156000 156034 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156017 156000 156034 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156034 156000 156051 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156034 156000 156051 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156051 156000 156068 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156051 156000 156068 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156068 156000 156084 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156068 156000 156084 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156084 156000 156101 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156084 156000 156101 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156101 156000 156118 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156101 156000 156118 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156118 156000 156135 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156118 156000 156135 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. in minecraft:overworld run forceload remove 156135 156000 156152 156151
execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run forceload remove 156135 156000 156152 156151

execute if score #rg_airdox_fish_fight switch.data matches 901.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"airdox_fish_fight","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_airdox_fish_fight switch.data matches 901.. run data modify storage switch:main MessageToLog set value '{"text":"Map `airdox_fish_fight` just regenerated!"}'
execute if score #rg_airdox_fish_fight switch.data matches 901.. run function switch:engine/log_message/apply

execute if score #rg_airdox_fish_fight switch.data matches 901.. in switch:game run function switch:maps/regenerate_doors_macro {name:"airdox_fish_fight"}
execute if score #rg_airdox_fish_fight switch.data matches 901.. run scoreboard players reset #rg_airdox_fish_fight switch.data
execute if score #rg_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/regenerate 1t

