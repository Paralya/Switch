
#> switch:maps/survival/cookie_wars/regenerate
#
# @within	switch:maps/survival/cookie_wars/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cookie_wars switch.data 1
execute if score #rg_cookie_wars switch.data matches 1 run data modify storage switch:maps to_regenerate.cookie_wars set value 2b
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7900 -1900 -7886 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7900 -1900 -7886 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7886 -1900 -7871 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7886 -1900 -7871 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7871 -1900 -7857 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7871 -1900 -7857 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7857 -1900 -7843 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7857 -1900 -7843 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7843 -1900 -7829 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7843 -1900 -7829 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7829 -1900 -7814 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7829 -1900 -7814 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7814 -1900 -7800 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7814 -1900 -7800 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7800 -1900 -7786 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7800 -1900 -7786 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7786 -1900 -7771 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7786 -1900 -7771 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7771 -1900 -7757 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7771 -1900 -7757 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7757 -1900 -7743 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7757 -1900 -7743 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7743 -1900 -7729 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7743 -1900 -7729 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7729 -1900 -7714 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7729 -1900 -7714 -1700
execute if score #rg_cookie_wars switch.data matches 1 in minecraft:overworld run forceload add -7714 -1900 -7700 -1700
execute if score #rg_cookie_wars switch.data matches 1 in switch:game run forceload add -7714 -1900 -7700 -1700

execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_y switch.data 100
execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_mod switch.data 0
execute if score #rg_cookie_wars switch.data matches ..672 summon marker run function switch:maps/survival/cookie_wars/regeneration_on_marker

execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run kill @e[type=item,x=-7800,y=100,z=-1800,distance=..1000]
execute if score #rg_cookie_wars switch.data matches 673.. run data remove storage switch:maps to_regenerate.cookie_wars

execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7900 -1900 -7886 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7900 -1900 -7886 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7886 -1900 -7871 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7886 -1900 -7871 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7871 -1900 -7857 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7871 -1900 -7857 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7857 -1900 -7843 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7857 -1900 -7843 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7843 -1900 -7829 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7843 -1900 -7829 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7829 -1900 -7814 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7829 -1900 -7814 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7814 -1900 -7800 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7814 -1900 -7800 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7800 -1900 -7786 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7800 -1900 -7786 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7786 -1900 -7771 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7786 -1900 -7771 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7771 -1900 -7757 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7771 -1900 -7757 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7757 -1900 -7743 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7757 -1900 -7743 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7743 -1900 -7729 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7743 -1900 -7729 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7729 -1900 -7714 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7729 -1900 -7714 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in minecraft:overworld run forceload remove -7714 -1900 -7700 -1700
execute if score #rg_cookie_wars switch.data matches 673.. in switch:game run forceload remove -7714 -1900 -7700 -1700

execute if score #rg_cookie_wars switch.data matches 673.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cookie Wars","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cookie_wars switch.data matches 673.. run function switch:engine/log_message/apply {message:"Map `Cookie Wars` just regenerated!"}

execute if score #rg_cookie_wars switch.data matches 673.. run scoreboard players reset #rg_cookie_wars switch.data
execute if score #rg_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/regenerate 1t

