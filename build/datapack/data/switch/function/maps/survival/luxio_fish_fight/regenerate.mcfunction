
#> switch:maps/survival/luxio_fish_fight/regenerate
#
# @within	switch:maps/survival/luxio_fish_fight/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_luxio_fish_fight switch.data 1
execute if score #rg_luxio_fish_fight switch.data matches 1 run data modify storage switch:maps to_regenerate.luxio_fish_fight set value 2b
execute if score #rg_luxio_fish_fight switch.data matches 1 in minecraft:overworld run forceload add -10000 -12000 -9972 -11945
execute if score #rg_luxio_fish_fight switch.data matches 1 in switch:game run forceload add -10000 -12000 -9972 -11945
execute if score #rg_luxio_fish_fight switch.data matches 1 in minecraft:overworld run forceload add -9972 -12000 -9944 -11945
execute if score #rg_luxio_fish_fight switch.data matches 1 in switch:game run forceload add -9972 -12000 -9944 -11945

execute if score #rg_luxio_fish_fight switch.data matches 1 run scoreboard players set #rg_luxio_fish_fight_y switch.data 100
execute if score #rg_luxio_fish_fight switch.data matches 1 run scoreboard players set #rg_luxio_fish_fight_mod switch.data 0
execute if score #rg_luxio_fish_fight switch.data matches ..74 summon marker run function switch:maps/survival/luxio_fish_fight/regeneration_on_marker

execute if score #rg_luxio_fish_fight switch.data matches 75.. in switch:game run kill @e[type=item,x=-9972,y=100,z=-11972,distance=..1000]
execute if score #rg_luxio_fish_fight switch.data matches 75.. run data remove storage switch:maps to_regenerate.luxio_fish_fight

execute if score #rg_luxio_fish_fight switch.data matches 75.. in minecraft:overworld run forceload remove -10000 -12000 -9972 -11945
execute if score #rg_luxio_fish_fight switch.data matches 75.. in switch:game run forceload remove -10000 -12000 -9972 -11945
execute if score #rg_luxio_fish_fight switch.data matches 75.. in minecraft:overworld run forceload remove -9972 -12000 -9944 -11945
execute if score #rg_luxio_fish_fight switch.data matches 75.. in switch:game run forceload remove -9972 -12000 -9944 -11945

execute if score #rg_luxio_fish_fight switch.data matches 75.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fish Fight Island","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_luxio_fish_fight switch.data matches 75.. run function switch:engine/log_message/apply {message:"Map `Fish Fight Island` just regenerated!"}

execute if score #rg_luxio_fish_fight switch.data matches 75.. in switch:game run function switch:maps/regenerate_doors_macro {name:"luxio_fish_fight"}
execute if score #rg_luxio_fish_fight switch.data matches 75.. run scoreboard players reset #rg_luxio_fish_fight switch.data
execute if score #rg_luxio_fish_fight switch.data matches 1.. run schedule function switch:maps/survival/luxio_fish_fight/regenerate 1t

