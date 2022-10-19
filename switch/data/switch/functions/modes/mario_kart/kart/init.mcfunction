
tag @s add switch.kart
scoreboard players set @s switch.temp.max_engine 1500
scoreboard players set @s switch.temp.booster_timer 0
tag @s remove switch.kart.init

#Kart Visual
scoreboard players add #next_id switch.id 1
summon armor_stand ~ ~ ~ {Tags:["switch.kart.init"],Invulnerable:1b,Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=switch.kart.init] run function switch:modes/mario_kart/kart/init_visual
scoreboard players operation @s switch.id = #next_id switch.id
effect give @s invisibility 999999 0 true
