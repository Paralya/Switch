
#> switch:maps/survival/ctf_plains_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_plains_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_plains_castles_y switch.data

execute if score #rg_ctf_plains_castles_mod switch.data matches 0 at @s in switch:game run particle cloud 146006 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld 146000 ~ 146000 146013 ~ 146227 to switch:game 146000 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 1 at @s in switch:game run particle cloud 146019 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld 146013 ~ 146000 146026 ~ 146227 to switch:game 146013 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 2 at @s in switch:game run particle cloud 146032 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld 146026 ~ 146000 146039 ~ 146227 to switch:game 146026 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 3 at @s in switch:game run particle cloud 146045 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld 146039 ~ 146000 146052 ~ 146227 to switch:game 146039 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 4 at @s in switch:game run particle cloud 146059 ~100.5 146113 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld 146052 ~ 146000 146066 ~ 146227 to switch:game 146052 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 5 at @s in switch:game run particle cloud 146072 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld 146066 ~ 146000 146079 ~ 146227 to switch:game 146066 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 6 at @s in switch:game run particle cloud 146085 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld 146079 ~ 146000 146092 ~ 146227 to switch:game 146079 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 7 at @s in switch:game run particle cloud 146098 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld 146092 ~ 146000 146105 ~ 146227 to switch:game 146092 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 8 at @s in switch:game run particle cloud 146111 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 8 at @s run clone from minecraft:overworld 146105 ~ 146000 146118 ~ 146227 to switch:game 146105 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 9 at @s in switch:game run particle cloud 146124 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 9 at @s run clone from minecraft:overworld 146118 ~ 146000 146131 ~ 146227 to switch:game 146118 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 10 at @s in switch:game run particle cloud 146137 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 10 at @s run clone from minecraft:overworld 146131 ~ 146000 146144 ~ 146227 to switch:game 146131 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 11 at @s in switch:game run particle cloud 146150 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 11 at @s run clone from minecraft:overworld 146144 ~ 146000 146157 ~ 146227 to switch:game 146144 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 12 at @s in switch:game run particle cloud 146163 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 12 at @s run clone from minecraft:overworld 146157 ~ 146000 146170 ~ 146227 to switch:game 146157 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 13 at @s in switch:game run particle cloud 146177 ~100.5 146113 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 13 at @s run clone from minecraft:overworld 146170 ~ 146000 146184 ~ 146227 to switch:game 146170 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 14 at @s in switch:game run particle cloud 146190 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 14 at @s run clone from minecraft:overworld 146184 ~ 146000 146197 ~ 146227 to switch:game 146184 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 15 at @s in switch:game run particle cloud 146203 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 15 at @s run clone from minecraft:overworld 146197 ~ 146000 146210 ~ 146227 to switch:game 146197 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 16 at @s in switch:game run particle cloud 146216 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 16 at @s run clone from minecraft:overworld 146210 ~ 146000 146223 ~ 146227 to switch:game 146210 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 17 at @s in switch:game run particle cloud 146229 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 17 at @s run clone from minecraft:overworld 146223 ~ 146000 146236 ~ 146227 to switch:game 146223 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 18 at @s in switch:game run particle cloud 146242 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 18 at @s run clone from minecraft:overworld 146236 ~ 146000 146249 ~ 146227 to switch:game 146236 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 19 at @s in switch:game run particle cloud 146255 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 19 at @s run clone from minecraft:overworld 146249 ~ 146000 146262 ~ 146227 to switch:game 146249 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 20 at @s in switch:game run particle cloud 146268 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 20 at @s run clone from minecraft:overworld 146262 ~ 146000 146275 ~ 146227 to switch:game 146262 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 21 at @s in switch:game run particle cloud 146282 ~100.5 146113 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 21 at @s run clone from minecraft:overworld 146275 ~ 146000 146289 ~ 146227 to switch:game 146275 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 22 at @s in switch:game run particle cloud 146295 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 22 at @s run clone from minecraft:overworld 146289 ~ 146000 146302 ~ 146227 to switch:game 146289 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 23 at @s in switch:game run particle cloud 146308 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 23 at @s run clone from minecraft:overworld 146302 ~ 146000 146315 ~ 146227 to switch:game 146302 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 24 at @s in switch:game run particle cloud 146321 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 24 at @s run clone from minecraft:overworld 146315 ~ 146000 146328 ~ 146227 to switch:game 146315 ~100 146000 replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 25 at @s in switch:game run particle cloud 146334 ~100.5 146113 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 25 at @s run clone from minecraft:overworld 146328 ~ 146000 146341 ~ 146227 to switch:game 146328 ~100 146000 replace force

scoreboard players add #rg_ctf_plains_castles_mod switch.data 1
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 in switch:game run kill @e[type=item,x=146170,y=0,z=146113,distance=..1000]
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 run scoreboard players add #rg_ctf_plains_castles_y switch.data 1
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 run scoreboard players set #rg_ctf_plains_castles_mod switch.data 0

kill @s
