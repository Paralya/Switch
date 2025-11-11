
#> switch:maps/survival/vilarles_castillo/regeneration_on_marker
#
# @within	switch:maps/survival/vilarles_castillo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_vilarles_castillo_y switch.data

execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s in switch:game run particle cloud 52008 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s run clone from minecraft:overworld 52000 ~ 52000 52016 ~ 52173 to switch:game 52000 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s in switch:game run particle cloud 52024 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s run clone from minecraft:overworld 52016 ~ 52000 52032 ~ 52173 to switch:game 52016 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s in switch:game run particle cloud 52040 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s run clone from minecraft:overworld 52032 ~ 52000 52048 ~ 52173 to switch:game 52032 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s in switch:game run particle cloud 52056 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s run clone from minecraft:overworld 52048 ~ 52000 52064 ~ 52173 to switch:game 52048 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s in switch:game run particle cloud 52072 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s run clone from minecraft:overworld 52064 ~ 52000 52080 ~ 52173 to switch:game 52064 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s in switch:game run particle cloud 52088 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s run clone from minecraft:overworld 52080 ~ 52000 52097 ~ 52173 to switch:game 52080 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s in switch:game run particle cloud 52105 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s run clone from minecraft:overworld 52097 ~ 52000 52113 ~ 52173 to switch:game 52097 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s in switch:game run particle cloud 52121 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s run clone from minecraft:overworld 52113 ~ 52000 52129 ~ 52173 to switch:game 52113 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s in switch:game run particle cloud 52137 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s run clone from minecraft:overworld 52129 ~ 52000 52145 ~ 52173 to switch:game 52129 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s in switch:game run particle cloud 52153 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s run clone from minecraft:overworld 52145 ~ 52000 52161 ~ 52173 to switch:game 52145 ~0 52000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s in switch:game run particle cloud 52169 ~0.5 52086 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s run clone from minecraft:overworld 52161 ~ 52000 52177 ~ 52173 to switch:game 52161 ~0 52000 strict replace force

scoreboard players add #rg_vilarles_castillo_mod switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 11 in switch:game run kill @e[type=item,x=52088,y=100,z=52086,distance=..1000]
execute if score #rg_vilarles_castillo_mod switch.data matches 11 run scoreboard players add #rg_vilarles_castillo_y switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 11 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0

kill @s

