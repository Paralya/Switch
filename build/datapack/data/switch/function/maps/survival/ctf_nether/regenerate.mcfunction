
#> switch:maps/survival/ctf_nether/regenerate
#
# @within	switch:maps/survival/ctf_nether/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_nether switch.data 1
execute if score #rg_ctf_nether switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_nether set value 2b
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -12000 -10000 -11992 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -12000 -10000 -11992 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11992 -10000 -11983 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11992 -10000 -11983 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11983 -10000 -11975 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11983 -10000 -11975 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11975 -10000 -11966 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11975 -10000 -11966 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11966 -10000 -11958 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11966 -10000 -11958 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11958 -10000 -11950 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11958 -10000 -11950 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11950 -10000 -11941 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11950 -10000 -11941 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11941 -10000 -11933 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11941 -10000 -11933 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11933 -10000 -11924 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11933 -10000 -11924 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11924 -10000 -11916 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11924 -10000 -11916 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11916 -10000 -11907 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11916 -10000 -11907 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11907 -10000 -11899 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11907 -10000 -11899 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11899 -10000 -11891 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11899 -10000 -11891 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11891 -10000 -11882 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11891 -10000 -11882 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11882 -10000 -11874 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11882 -10000 -11874 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11874 -10000 -11865 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11874 -10000 -11865 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11865 -10000 -11857 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11865 -10000 -11857 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11857 -10000 -11848 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11857 -10000 -11848 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11848 -10000 -11840 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11848 -10000 -11840 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11840 -10000 -11832 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11840 -10000 -11832 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11832 -10000 -11823 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11832 -10000 -11823 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11823 -10000 -11815 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11823 -10000 -11815 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11815 -10000 -11806 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11815 -10000 -11806 -9650
execute if score #rg_ctf_nether switch.data matches 1 in minecraft:overworld run forceload add -11806 -10000 -11798 -9650
execute if score #rg_ctf_nether switch.data matches 1 in switch:game run forceload add -11806 -10000 -11798 -9650

execute if score #rg_ctf_nether switch.data matches 1 run scoreboard players set #rg_ctf_nether_y switch.data 100
execute if score #rg_ctf_nether switch.data matches 1 run scoreboard players set #rg_ctf_nether_mod switch.data 0
execute if score #rg_ctf_nether switch.data matches ..2640 summon marker run function switch:maps/survival/ctf_nether/regeneration_on_marker

execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run kill @e[type=item,x=-11899,y=100,z=-9825,distance=..1000]
execute if score #rg_ctf_nether switch.data matches 2641.. run data remove storage switch:maps to_regenerate.ctf_nether

execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -12000 -10000 -11992 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -12000 -10000 -11992 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11992 -10000 -11983 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11992 -10000 -11983 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11983 -10000 -11975 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11983 -10000 -11975 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11975 -10000 -11966 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11975 -10000 -11966 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11966 -10000 -11958 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11966 -10000 -11958 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11958 -10000 -11950 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11958 -10000 -11950 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11950 -10000 -11941 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11950 -10000 -11941 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11941 -10000 -11933 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11941 -10000 -11933 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11933 -10000 -11924 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11933 -10000 -11924 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11924 -10000 -11916 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11924 -10000 -11916 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11916 -10000 -11907 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11916 -10000 -11907 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11907 -10000 -11899 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11907 -10000 -11899 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11899 -10000 -11891 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11899 -10000 -11891 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11891 -10000 -11882 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11891 -10000 -11882 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11882 -10000 -11874 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11882 -10000 -11874 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11874 -10000 -11865 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11874 -10000 -11865 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11865 -10000 -11857 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11865 -10000 -11857 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11857 -10000 -11848 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11857 -10000 -11848 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11848 -10000 -11840 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11848 -10000 -11840 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11840 -10000 -11832 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11840 -10000 -11832 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11832 -10000 -11823 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11832 -10000 -11823 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11823 -10000 -11815 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11823 -10000 -11815 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11815 -10000 -11806 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11815 -10000 -11806 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in minecraft:overworld run forceload remove -11806 -10000 -11798 -9650
execute if score #rg_ctf_nether switch.data matches 2641.. in switch:game run forceload remove -11806 -10000 -11798 -9650

execute if score #rg_ctf_nether switch.data matches 2641.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fiery Wastes","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_nether switch.data matches 2641.. run function switch:engine/log_message/apply {message:"Map `Fiery Wastes` just regenerated!"}

execute if score #rg_ctf_nether switch.data matches 2641.. run scoreboard players reset #rg_ctf_nether switch.data
execute if score #rg_ctf_nether switch.data matches 1.. run schedule function switch:maps/survival/ctf_nether/regenerate 1t

