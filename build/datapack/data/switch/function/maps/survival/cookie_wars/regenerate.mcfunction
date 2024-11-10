
#> switch:maps/survival/cookie_wars/regenerate
#
# @within	switch:maps/survival/cookie_wars/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cookie_wars switch.data 1
execute if score #rg_cookie_wars switch.data matches 1 run data modify storage switch:maps to_regenerate.cookie_wars set value 2b
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48900 48900 48914 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48900 48900 48914 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48914 48900 48929 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48914 48900 48929 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48929 48900 48943 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48929 48900 48943 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48943 48900 48957 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48943 48900 48957 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48957 48900 48971 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48957 48900 48971 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48971 48900 48986 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48971 48900 48986 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 48986 48900 49000 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 48986 48900 49000 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49000 48900 49014 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49000 48900 49014 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49014 48900 49029 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49014 48900 49029 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49029 48900 49043 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49029 48900 49043 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49043 48900 49057 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49043 48900 49057 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49057 48900 49071 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49057 48900 49071 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49071 48900 49086 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49071 48900 49086 49100
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add 49086 48900 49100 49100
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add 49086 48900 49100 49100

execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_y switch.data 0
execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_mod switch.data 0
execute if score #rg_cookie_wars switch.data matches ..672 summon marker run function switch:maps/survival/cookie_wars/regeneration_on_marker

execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run kill @e[type=item,x=49000,y=0,z=49000,distance=..1000]
execute if score #rg_cookie_wars switch.data matches 673.. run data remove storage switch:maps to_regenerate.cookie_wars

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48900 48900 48914 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48900 48900 48914 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48914 48900 48929 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48914 48900 48929 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48929 48900 48943 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48929 48900 48943 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48943 48900 48957 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48943 48900 48957 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48957 48900 48971 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48957 48900 48971 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48971 48900 48986 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48971 48900 48986 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 48986 48900 49000 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 48986 48900 49000 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49000 48900 49014 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49000 48900 49014 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49014 48900 49029 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49014 48900 49029 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49029 48900 49043 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49029 48900 49043 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49043 48900 49057 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49043 48900 49057 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49057 48900 49071 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49057 48900 49071 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49071 48900 49086 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49071 48900 49086 49100

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove 49086 48900 49100 49100
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove 49086 48900 49100 49100

execute if score #rg_cookie_wars switch.data matches 673.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"cookie_wars","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_cookie_wars switch.data matches 673.. run data modify storage switch:main MessageToLog set value '{"text":"Map `cookie_wars` just regenerated!"}'
execute if score #rg_cookie_wars switch.data matches 673.. run function switch:engine/log_message/apply

execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cookie_wars"}
execute if score #rg_cookie_wars switch.data matches 673.. run scoreboard players reset #rg_cookie_wars switch.data
execute if score #rg_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/regenerate 1t

