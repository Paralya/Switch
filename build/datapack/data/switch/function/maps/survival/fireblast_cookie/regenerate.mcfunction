
#> switch:maps/survival/fireblast_cookie/regenerate
#
# @within	switch:maps/survival/fireblast_cookie/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_cookie switch.data 1
execute if score #rg_fireblast_cookie switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_cookie set value 2b
execute if score #rg_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 12000 -8000 12025 -7925
execute if score #rg_fireblast_cookie switch.data matches 1 in switch:game run forceload add 12000 -8000 12025 -7925
execute if score #rg_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 12025 -8000 12050 -7925
execute if score #rg_fireblast_cookie switch.data matches 1 in switch:game run forceload add 12025 -8000 12050 -7925
execute if score #rg_fireblast_cookie switch.data matches 1 in minecraft:overworld run forceload add 12050 -8000 12075 -7925
execute if score #rg_fireblast_cookie switch.data matches 1 in switch:game run forceload add 12050 -8000 12075 -7925

execute if score #rg_fireblast_cookie switch.data matches 1 run scoreboard players set #rg_fireblast_cookie_y switch.data 100
execute if score #rg_fireblast_cookie switch.data matches 1 run scoreboard players set #rg_fireblast_cookie_mod switch.data 0
execute if score #rg_fireblast_cookie switch.data matches ..171 summon marker run function switch:maps/survival/fireblast_cookie/regeneration_on_marker

execute if score #rg_fireblast_cookie switch.data matches 172.. in switch:game run kill @e[type=item,x=12037,y=100,z=-7962,distance=..1000]
execute if score #rg_fireblast_cookie switch.data matches 172.. run data remove storage switch:maps to_regenerate.fireblast_cookie

execute if score #rg_fireblast_cookie switch.data matches 172.. in minecraft:overworld run forceload remove 12000 -8000 12025 -7925
execute if score #rg_fireblast_cookie switch.data matches 172.. in switch:game run forceload remove 12000 -8000 12025 -7925
execute if score #rg_fireblast_cookie switch.data matches 172.. in minecraft:overworld run forceload remove 12025 -8000 12050 -7925
execute if score #rg_fireblast_cookie switch.data matches 172.. in switch:game run forceload remove 12025 -8000 12050 -7925
execute if score #rg_fireblast_cookie switch.data matches 172.. in minecraft:overworld run forceload remove 12050 -8000 12075 -7925
execute if score #rg_fireblast_cookie switch.data matches 172.. in switch:game run forceload remove 12050 -8000 12075 -7925

execute if score #rg_fireblast_cookie switch.data matches 172.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Smol Cookie","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_fireblast_cookie switch.data matches 172.. run function switch:engine/log_message/apply {message:"Map `Smol Cookie` just regenerated!"}

execute if score #rg_fireblast_cookie switch.data matches 172.. run scoreboard players reset #rg_fireblast_cookie switch.data
execute if score #rg_fireblast_cookie switch.data matches 1.. run schedule function switch:maps/survival/fireblast_cookie/regenerate 1t

