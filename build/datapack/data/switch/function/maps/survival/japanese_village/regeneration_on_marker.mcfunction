
#> switch:maps/survival/japanese_village/regeneration_on_marker
#
# @within	switch:maps/survival/japanese_village/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_japanese_village_y switch.data

execute if score #rg_japanese_village_mod switch.data matches 0 at @s in switch:game run particle cloud 90005 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 0 at @s run clone from minecraft:overworld 90000 ~ 90000 90010 ~ 90286 to switch:game 90000 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 1 at @s in switch:game run particle cloud 90015 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 1 at @s run clone from minecraft:overworld 90010 ~ 90000 90020 ~ 90286 to switch:game 90010 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 2 at @s in switch:game run particle cloud 90025 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 2 at @s run clone from minecraft:overworld 90020 ~ 90000 90031 ~ 90286 to switch:game 90020 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 3 at @s in switch:game run particle cloud 90036 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 3 at @s run clone from minecraft:overworld 90031 ~ 90000 90041 ~ 90286 to switch:game 90031 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 4 at @s in switch:game run particle cloud 90046 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 4 at @s run clone from minecraft:overworld 90041 ~ 90000 90051 ~ 90286 to switch:game 90041 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 5 at @s in switch:game run particle cloud 90056 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 5 at @s run clone from minecraft:overworld 90051 ~ 90000 90061 ~ 90286 to switch:game 90051 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 6 at @s in switch:game run particle cloud 90066 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 6 at @s run clone from minecraft:overworld 90061 ~ 90000 90071 ~ 90286 to switch:game 90061 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 7 at @s in switch:game run particle cloud 90076 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 7 at @s run clone from minecraft:overworld 90071 ~ 90000 90081 ~ 90286 to switch:game 90071 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 8 at @s in switch:game run particle cloud 90086 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 8 at @s run clone from minecraft:overworld 90081 ~ 90000 90092 ~ 90286 to switch:game 90081 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 9 at @s in switch:game run particle cloud 90097 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 9 at @s run clone from minecraft:overworld 90092 ~ 90000 90102 ~ 90286 to switch:game 90092 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 10 at @s in switch:game run particle cloud 90107 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 10 at @s run clone from minecraft:overworld 90102 ~ 90000 90112 ~ 90286 to switch:game 90102 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 11 at @s in switch:game run particle cloud 90117 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 11 at @s run clone from minecraft:overworld 90112 ~ 90000 90122 ~ 90286 to switch:game 90112 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 12 at @s in switch:game run particle cloud 90127 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 12 at @s run clone from minecraft:overworld 90122 ~ 90000 90132 ~ 90286 to switch:game 90122 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 13 at @s in switch:game run particle cloud 90137 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 13 at @s run clone from minecraft:overworld 90132 ~ 90000 90143 ~ 90286 to switch:game 90132 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 14 at @s in switch:game run particle cloud 90148 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 14 at @s run clone from minecraft:overworld 90143 ~ 90000 90153 ~ 90286 to switch:game 90143 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 15 at @s in switch:game run particle cloud 90158 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 15 at @s run clone from minecraft:overworld 90153 ~ 90000 90163 ~ 90286 to switch:game 90153 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 16 at @s in switch:game run particle cloud 90168 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 16 at @s run clone from minecraft:overworld 90163 ~ 90000 90173 ~ 90286 to switch:game 90163 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 17 at @s in switch:game run particle cloud 90178 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 17 at @s run clone from minecraft:overworld 90173 ~ 90000 90183 ~ 90286 to switch:game 90173 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 18 at @s in switch:game run particle cloud 90188 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 18 at @s run clone from minecraft:overworld 90183 ~ 90000 90193 ~ 90286 to switch:game 90183 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 19 at @s in switch:game run particle cloud 90198 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 19 at @s run clone from minecraft:overworld 90193 ~ 90000 90204 ~ 90286 to switch:game 90193 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 20 at @s in switch:game run particle cloud 90209 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 20 at @s run clone from minecraft:overworld 90204 ~ 90000 90214 ~ 90286 to switch:game 90204 ~100 90000 replace force

execute if score #rg_japanese_village_mod switch.data matches 21 at @s in switch:game run particle cloud 90219 ~100.5 90143 5 0 71 0 250 force
execute if score #rg_japanese_village_mod switch.data matches 21 at @s run clone from minecraft:overworld 90214 ~ 90000 90224 ~ 90286 to switch:game 90214 ~100 90000 replace force

scoreboard players add #rg_japanese_village_mod switch.data 1
execute if score #rg_japanese_village_mod switch.data matches 22 in switch:game run kill @e[type=item,x=90112,y=0,z=90143,distance=..1000]
execute if score #rg_japanese_village_mod switch.data matches 22 run scoreboard players add #rg_japanese_village_y switch.data 1
execute if score #rg_japanese_village_mod switch.data matches 22 run scoreboard players set #rg_japanese_village_mod switch.data 0

kill @s

