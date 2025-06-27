
#> switch:maps/survival/airdox_fish_fight/regeneration_on_marker
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_airdox_fish_fight_y switch.data

execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s in switch:game run particle cloud 156008 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s run clone from minecraft:overworld 156000 ~ 156000 156017 ~ 156151 to switch:game 156000 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s in switch:game run particle cloud 156025 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s run clone from minecraft:overworld 156017 ~ 156000 156034 ~ 156151 to switch:game 156017 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s in switch:game run particle cloud 156042 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s run clone from minecraft:overworld 156034 ~ 156000 156051 ~ 156151 to switch:game 156034 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s in switch:game run particle cloud 156059 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s run clone from minecraft:overworld 156051 ~ 156000 156068 ~ 156151 to switch:game 156051 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s in switch:game run particle cloud 156076 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s run clone from minecraft:overworld 156068 ~ 156000 156084 ~ 156151 to switch:game 156068 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s in switch:game run particle cloud 156092 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s run clone from minecraft:overworld 156084 ~ 156000 156101 ~ 156151 to switch:game 156084 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s in switch:game run particle cloud 156109 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s run clone from minecraft:overworld 156101 ~ 156000 156118 ~ 156151 to switch:game 156101 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s in switch:game run particle cloud 156126 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s run clone from minecraft:overworld 156118 ~ 156000 156135 ~ 156151 to switch:game 156118 ~0 156000 replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s in switch:game run particle cloud 156143 ~0.5 156075 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s run clone from minecraft:overworld 156135 ~ 156000 156152 ~ 156151 to switch:game 156135 ~0 156000 replace force

scoreboard players add #rg_airdox_fish_fight_mod switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 in switch:game run kill @e[type=item,x=156076,y=100,z=156075,distance=..1000]
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players add #rg_airdox_fish_fight_y switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0

kill @s

