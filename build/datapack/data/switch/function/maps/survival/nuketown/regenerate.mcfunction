
#> switch:maps/survival/nuketown/regenerate
#
# @within	switch:maps/survival/nuketown/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nuketown switch.data 1
execute if score #rg_nuketown switch.data matches 1 run data modify storage switch:maps to_regenerate.nuketown set value 2b
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72000 72000 72013 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72000 72000 72013 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72013 72000 72026 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72013 72000 72026 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72026 72000 72039 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72026 72000 72039 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72039 72000 72052 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72039 72000 72052 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72052 72000 72065 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72052 72000 72065 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72065 72000 72078 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72065 72000 72078 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72078 72000 72091 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72078 72000 72091 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72091 72000 72104 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72091 72000 72104 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72104 72000 72116 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72104 72000 72116 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72116 72000 72129 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72116 72000 72129 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72129 72000 72142 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72129 72000 72142 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72142 72000 72155 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72142 72000 72155 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72155 72000 72168 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72155 72000 72168 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72168 72000 72181 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72168 72000 72181 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72181 72000 72194 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72181 72000 72194 72220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72194 72000 72207 72220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add 72194 72000 72207 72220

execute if score #rg_nuketown switch.data matches 1 run scoreboard players set #rg_nuketown_y switch.data 100
execute if score #rg_nuketown switch.data matches 1 run scoreboard players set #rg_nuketown_mod switch.data 0
execute if score #rg_nuketown switch.data matches ..832 summon marker run function switch:maps/survival/nuketown/regeneration_on_marker

execute if score #rg_nuketown switch.data matches 833.. in switch:game run kill @e[type=item,x=72103,y=100,z=72110,distance=..1000]
execute if score #rg_nuketown switch.data matches 833.. run data remove storage switch:maps to_regenerate.nuketown

execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72000 72000 72013 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72000 72000 72013 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72013 72000 72026 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72013 72000 72026 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72026 72000 72039 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72026 72000 72039 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72039 72000 72052 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72039 72000 72052 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72052 72000 72065 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72052 72000 72065 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72065 72000 72078 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72065 72000 72078 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72078 72000 72091 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72078 72000 72091 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72091 72000 72104 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72091 72000 72104 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72104 72000 72116 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72104 72000 72116 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72116 72000 72129 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72116 72000 72129 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72129 72000 72142 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72129 72000 72142 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72142 72000 72155 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72142 72000 72155 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72155 72000 72168 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72155 72000 72168 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72168 72000 72181 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72168 72000 72181 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72181 72000 72194 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72181 72000 72194 72220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove 72194 72000 72207 72220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove 72194 72000 72207 72220

execute if score #rg_nuketown switch.data matches 833.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nuketown","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nuketown switch.data matches 833.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Nuketown` just regenerated!"}'
execute if score #rg_nuketown switch.data matches 833.. run function switch:engine/log_message/apply

execute if score #rg_nuketown switch.data matches 833.. in switch:game run function switch:maps/regenerate_doors_macro {name:"nuketown"}
execute if score #rg_nuketown switch.data matches 833.. run scoreboard players reset #rg_nuketown switch.data
execute if score #rg_nuketown switch.data matches 1.. run schedule function switch:maps/survival/nuketown/regenerate 1t

