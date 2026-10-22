
#> switch:maps/survival/ctf_mountains_castles/regenerate
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_mountains_castles switch.data 1
execute if score #rg_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_mountains_castles set value 2b
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -12000 -6000 -11981 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -12000 -6000 -11981 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11981 -6000 -11962 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11981 -6000 -11962 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11962 -6000 -11943 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11962 -6000 -11943 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11943 -6000 -11923 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11943 -6000 -11923 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11923 -6000 -11904 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11923 -6000 -11904 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11904 -6000 -11885 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11904 -6000 -11885 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11885 -6000 -11866 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11885 -6000 -11866 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11866 -6000 -11847 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11866 -6000 -11847 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11847 -6000 -11828 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11847 -6000 -11828 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11828 -6000 -11808 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11828 -6000 -11808 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11808 -6000 -11789 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11808 -6000 -11789 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11789 -6000 -11770 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11789 -6000 -11770 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11770 -6000 -11751 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11770 -6000 -11751 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11751 -6000 -11732 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11751 -6000 -11732 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11732 -6000 -11713 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11732 -6000 -11713 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11713 -6000 -11693 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11713 -6000 -11693 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11693 -6000 -11674 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11693 -6000 -11674 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11674 -6000 -11655 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11674 -6000 -11655 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11655 -6000 -11636 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11655 -6000 -11636 -5842

execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_y switch.data 100
execute if score #rg_ctf_mountains_castles switch.data matches 1 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0
execute if score #rg_ctf_mountains_castles switch.data matches ..3097 summon marker run function switch:maps/survival/ctf_mountains_castles/regeneration_on_marker

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run kill @e[type=item,x=-11818,y=100,z=-5921,distance=..1000]
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run data remove storage switch:maps to_regenerate.ctf_mountains_castles

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -12000 -6000 -11981 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -12000 -6000 -11981 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11981 -6000 -11962 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11981 -6000 -11962 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11962 -6000 -11943 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11962 -6000 -11943 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11943 -6000 -11923 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11943 -6000 -11923 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11923 -6000 -11904 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11923 -6000 -11904 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11904 -6000 -11885 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11904 -6000 -11885 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11885 -6000 -11866 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11885 -6000 -11866 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11866 -6000 -11847 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11866 -6000 -11847 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11847 -6000 -11828 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11847 -6000 -11828 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11828 -6000 -11808 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11828 -6000 -11808 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11808 -6000 -11789 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11808 -6000 -11789 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11789 -6000 -11770 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11789 -6000 -11770 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11770 -6000 -11751 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11770 -6000 -11751 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11751 -6000 -11732 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11751 -6000 -11732 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11732 -6000 -11713 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11732 -6000 -11713 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11713 -6000 -11693 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11713 -6000 -11693 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11693 -6000 -11674 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11693 -6000 -11674 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11674 -6000 -11655 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11674 -6000 -11655 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in minecraft:overworld run forceload remove -11655 -6000 -11636 -5842
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run forceload remove -11655 -6000 -11636 -5842

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Vale Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run function switch:engine/log_message/apply {message:"Map `Vale Castle` just regenerated!"}

execute if score #rg_ctf_mountains_castles switch.data matches 3098.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_mountains_castles"}
execute if score #rg_ctf_mountains_castles switch.data matches 3098.. run scoreboard players reset #rg_ctf_mountains_castles switch.data
execute if score #rg_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/regenerate 1t

