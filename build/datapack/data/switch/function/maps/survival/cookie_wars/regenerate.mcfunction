
#> switch:maps/survival/cookie_wars/regenerate
#
# @within	switch:maps/survival/cookie_wars/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cookie_wars switch.data 1
execute if score #rg_cookie_wars switch.data matches 1 run data modify storage switch:maps to_regenerate.cookie_wars set value 2b
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49000 49000 49014 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49000 49000 49014 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49014 49000 49029 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49014 49000 49029 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49029 49000 49043 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49029 49000 49043 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49043 49000 49057 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49043 49000 49057 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49057 49000 49071 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49057 49000 49071 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49071 49000 49086 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49071 49000 49086 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49086 49000 49100 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49086 49000 49100 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49100 49000 49114 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49100 49000 49114 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49114 49000 49129 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49114 49000 49129 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49129 49000 49143 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49129 49000 49143 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49143 49000 49157 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49143 49000 49157 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49157 49000 49171 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49157 49000 49171 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49171 49000 49186 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49171 49000 49186 49200
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49186 49000 49200 49200
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49186 49000 49200 49200

execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_y switch.data 100
execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_mod switch.data 0
execute if score #rg_cookie_wars switch.data matches ..672 summon marker run function switch:maps/survival/cookie_wars/regeneration_on_marker

execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run kill @e[type=item,x=49100,y=100,z=49100,distance=..1000]
execute if score #rg_cookie_wars switch.data matches 673.. run data remove storage switch:maps to_regenerate.cookie_wars

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49000 49000 49014 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49000 49000 49014 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49014 49000 49029 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49014 49000 49029 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49029 49000 49043 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49029 49000 49043 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49043 49000 49057 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49043 49000 49057 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49057 49000 49071 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49057 49000 49071 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49071 49000 49086 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49071 49000 49086 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49086 49000 49100 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49086 49000 49100 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49100 49000 49114 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49100 49000 49114 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49114 49000 49129 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49114 49000 49129 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49129 49000 49143 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49129 49000 49143 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49143 49000 49157 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49143 49000 49157 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49157 49000 49171 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49157 49000 49171 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49171 49000 49186 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49171 49000 49186 49200

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49186 49000 49200 49200
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49186 49000 49200 49200

execute if score #rg_cookie_wars switch.data matches 673.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cookie Wars","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_cookie_wars switch.data matches 673.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Cookie Wars` just regenerated!"}'
execute if score #rg_cookie_wars switch.data matches 673.. run function switch:engine/log_message/apply

execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cookie_wars"}
execute if score #rg_cookie_wars switch.data matches 673.. run scoreboard players reset #rg_cookie_wars switch.data
execute if score #rg_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/regenerate 1t

