
#> switch:maps/survival/airdox_fish_fight/regenerate
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_airdox_fish_fight switch.data 1
execute if score #rg_airdox_fish_fight switch.data matches 1 run data modify storage switch:maps to_regenerate.airdox_fish_fight set value 2b
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155924 155924 155941 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155924 155924 155941 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155941 155924 155958 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155941 155924 155958 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155958 155924 155975 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155958 155924 155975 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155975 155924 155992 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155975 155924 155992 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 155992 155924 156008 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 155992 155924 156008 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156008 155924 156025 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156008 155924 156025 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156025 155924 156042 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156025 155924 156042 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156042 155924 156059 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156042 155924 156059 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in minecraft:overworld run forceload add 156059 155924 156076 156075
execute if score #rg_airdox_fish_fight switch.data matches 1 in switch:game run forceload add 156059 155924 156076 156075

execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_y switch.data -52
execute if score #rg_airdox_fish_fight switch.data matches 1 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0
execute if score #rg_airdox_fish_fight switch.data matches ..1089 summon marker run function switch:maps/survival/airdox_fish_fight/regeneration_on_marker

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run kill @e[type=item,x=156000,y=-52,z=155999,distance=..1000]
execute if score #rg_airdox_fish_fight switch.data matches 1090.. run data remove storage switch:maps to_regenerate.airdox_fish_fight

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 155924 155924 155941 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 155924 155924 155941 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 155941 155924 155958 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 155941 155924 155958 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 155958 155924 155975 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 155958 155924 155975 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 155975 155924 155992 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 155975 155924 155992 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 155992 155924 156008 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 155992 155924 156008 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 156008 155924 156025 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 156008 155924 156025 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 156025 155924 156042 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 156025 155924 156042 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 156042 155924 156059 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 156042 155924 156059 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in minecraft:overworld run forceload remove 156059 155924 156076 156075
execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run forceload remove 156059 155924 156076 156075

execute if score #rg_airdox_fish_fight switch.data matches 1090.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"airdox_fish_fight","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_airdox_fish_fight switch.data matches 1090.. run data modify storage switch:main MessageToLog set value '{"text":"Map `airdox_fish_fight` just regenerated!"}'
execute if score #rg_airdox_fish_fight switch.data matches 1090.. run function switch:engine/log_message/apply

execute if score #rg_airdox_fish_fight switch.data matches 1090.. in switch:game run function switch:maps/regenerate_doors_macro {name:"airdox_fish_fight"}
execute if score #rg_airdox_fish_fight switch.data matches 1090.. run scoreboard players reset #rg_airdox_fish_fight switch.data
execute if score #rg_airdox_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/airdox_fish_fight/regenerate 1t

