
#> switch:maps/survival/airdox_fish_fight/regeneration_on_marker
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_airdox_fish_fight_y switch.data

execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s in switch:game run particle cloud 155932 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s run clone from minecraft:overworld 155924 ~ 155924 155941 ~ 156075 to switch:game 155924 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s in switch:game run particle cloud 155949 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s run clone from minecraft:overworld 155941 ~ 155924 155958 ~ 156075 to switch:game 155941 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s in switch:game run particle cloud 155966 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s run clone from minecraft:overworld 155958 ~ 155924 155975 ~ 156075 to switch:game 155958 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s in switch:game run particle cloud 155983 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s run clone from minecraft:overworld 155975 ~ 155924 155992 ~ 156075 to switch:game 155975 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s in switch:game run particle cloud 156000 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s run clone from minecraft:overworld 155992 ~ 155924 156008 ~ 156075 to switch:game 155992 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s in switch:game run particle cloud 156016 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s run clone from minecraft:overworld 156008 ~ 155924 156025 ~ 156075 to switch:game 156008 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s in switch:game run particle cloud 156033 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s run clone from minecraft:overworld 156025 ~ 155924 156042 ~ 156075 to switch:game 156025 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s in switch:game run particle cloud 156050 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s run clone from minecraft:overworld 156042 ~ 155924 156059 ~ 156075 to switch:game 156042 ~127 155924 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s in switch:game run particle cloud 156067 ~127.5 155999 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s run clone from minecraft:overworld 156059 ~ 155924 156076 ~ 156075 to switch:game 156059 ~127 155924 replace force

scoreboard players add #rg_airdox_fish_fight_mod switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 in switch:game run kill @e[type=item,x=156000,y=-52,z=155999,distance=..1000]
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players add #rg_airdox_fish_fight_y switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0

kill @s

