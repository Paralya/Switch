
#> switch:maps/survival/airdox_fish_fight/regeneration_on_marker
#
# @within	switch:maps/survival/airdox_fish_fight/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_airdox_fish_fight_y switch.data

execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s in switch:game run particle cloud 8 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ -12000 17 ~ -11849 to switch:game 0 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s in switch:game run particle cloud 25 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 1 at @s run clone from minecraft:overworld 17 ~ -12000 34 ~ -11849 to switch:game 17 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s in switch:game run particle cloud 42 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 2 at @s run clone from minecraft:overworld 34 ~ -12000 51 ~ -11849 to switch:game 34 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s in switch:game run particle cloud 59 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 3 at @s run clone from minecraft:overworld 51 ~ -12000 68 ~ -11849 to switch:game 51 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s in switch:game run particle cloud 76 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 4 at @s run clone from minecraft:overworld 68 ~ -12000 84 ~ -11849 to switch:game 68 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s in switch:game run particle cloud 92 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 5 at @s run clone from minecraft:overworld 84 ~ -12000 101 ~ -11849 to switch:game 84 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s in switch:game run particle cloud 109 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 6 at @s run clone from minecraft:overworld 101 ~ -12000 118 ~ -11849 to switch:game 101 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s in switch:game run particle cloud 126 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 7 at @s run clone from minecraft:overworld 118 ~ -12000 135 ~ -11849 to switch:game 118 ~0 -12000 strict replace force

execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s in switch:game run particle cloud 143 ~0.5 -11925 8 0 37 0 250 force
execute if score #rg_airdox_fish_fight_mod switch.data matches 8 at @s run clone from minecraft:overworld 135 ~ -12000 152 ~ -11849 to switch:game 135 ~0 -12000 strict replace force

scoreboard players add #rg_airdox_fish_fight_mod switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 in switch:game run kill @e[type=item,x=76,y=100,z=-11924,distance=..1000]
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players add #rg_airdox_fish_fight_y switch.data 1
execute if score #rg_airdox_fish_fight_mod switch.data matches 9 run scoreboard players set #rg_airdox_fish_fight_mod switch.data 0

kill @s

