
#> switch:maps/survival/paralya_lobby_noel/regenerate
#
# @within	switch:maps/survival/paralya_lobby_noel/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_paralya_lobby_noel switch.data 1
execute if score #rg_paralya_lobby_noel switch.data matches 1 run data modify storage switch:maps to_regenerate.paralya_lobby_noel set value 2b
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -2000 6000 -1986 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -2000 6000 -1986 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1986 6000 -1971 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1986 6000 -1971 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1971 6000 -1957 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1971 6000 -1957 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1957 6000 -1943 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1957 6000 -1943 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1943 6000 -1929 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1943 6000 -1929 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1929 6000 -1914 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1929 6000 -1914 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1914 6000 -1900 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1914 6000 -1900 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1900 6000 -1886 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1900 6000 -1886 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1886 6000 -1871 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1886 6000 -1871 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1871 6000 -1857 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1871 6000 -1857 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1857 6000 -1843 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1857 6000 -1843 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1843 6000 -1829 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1843 6000 -1829 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1829 6000 -1814 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1829 6000 -1814 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in minecraft:overworld run forceload add -1814 6000 -1800 6200
execute if score #rg_paralya_lobby_noel switch.data matches 1 in switch:game run forceload add -1814 6000 -1800 6200

execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_y switch.data 100
execute if score #rg_paralya_lobby_noel switch.data matches 1 run scoreboard players set #rg_paralya_lobby_noel_mod switch.data 0
execute if score #rg_paralya_lobby_noel switch.data matches ..2310 summon marker run function switch:maps/survival/paralya_lobby_noel/regeneration_on_marker

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run kill @e[type=item,x=-1900,y=100,z=6100,distance=..1000]
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run data remove storage switch:maps to_regenerate.paralya_lobby_noel

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -2000 6000 -1986 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -2000 6000 -1986 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1986 6000 -1971 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1986 6000 -1971 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1971 6000 -1957 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1971 6000 -1957 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1957 6000 -1943 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1957 6000 -1943 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1943 6000 -1929 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1943 6000 -1929 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1929 6000 -1914 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1929 6000 -1914 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1914 6000 -1900 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1914 6000 -1900 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1900 6000 -1886 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1900 6000 -1886 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1886 6000 -1871 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1886 6000 -1871 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1871 6000 -1857 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1871 6000 -1857 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1857 6000 -1843 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1857 6000 -1843 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1843 6000 -1829 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1843 6000 -1829 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1829 6000 -1814 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1829 6000 -1814 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in minecraft:overworld run forceload remove -1814 6000 -1800 6200
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run forceload remove -1814 6000 -1800 6200

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Paralya Lobby Noel","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"55","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run function switch:engine/log_message/apply {message:"Map `Paralya Lobby Noel` just regenerated!"}

execute if score #rg_paralya_lobby_noel switch.data matches 2311.. in switch:game run function switch:maps/regenerate_doors_macro {name:"paralya_lobby_noel"}
execute if score #rg_paralya_lobby_noel switch.data matches 2311.. run scoreboard players reset #rg_paralya_lobby_noel switch.data
execute if score #rg_paralya_lobby_noel switch.data matches 1.. run schedule function switch:maps/survival/paralya_lobby_noel/regenerate 1t

