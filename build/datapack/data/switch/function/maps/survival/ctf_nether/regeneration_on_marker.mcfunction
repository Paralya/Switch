
#> switch:maps/survival/ctf_nether/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_nether/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_nether_y switch.data

execute if score #rg_ctf_nether_mod switch.data matches 0 at @s in switch:game run particle cloud 149004 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 0 at @s run clone from minecraft:overworld 149000 ~ 149000 149008 ~ 149350 to switch:game 149000 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 1 at @s in switch:game run particle cloud 149012 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 1 at @s run clone from minecraft:overworld 149008 ~ 149000 149017 ~ 149350 to switch:game 149008 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 2 at @s in switch:game run particle cloud 149021 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 2 at @s run clone from minecraft:overworld 149017 ~ 149000 149025 ~ 149350 to switch:game 149017 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 3 at @s in switch:game run particle cloud 149029 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 3 at @s run clone from minecraft:overworld 149025 ~ 149000 149034 ~ 149350 to switch:game 149025 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 4 at @s in switch:game run particle cloud 149038 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 4 at @s run clone from minecraft:overworld 149034 ~ 149000 149042 ~ 149350 to switch:game 149034 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 5 at @s in switch:game run particle cloud 149046 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 5 at @s run clone from minecraft:overworld 149042 ~ 149000 149050 ~ 149350 to switch:game 149042 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 6 at @s in switch:game run particle cloud 149054 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 6 at @s run clone from minecraft:overworld 149050 ~ 149000 149059 ~ 149350 to switch:game 149050 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 7 at @s in switch:game run particle cloud 149063 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 7 at @s run clone from minecraft:overworld 149059 ~ 149000 149067 ~ 149350 to switch:game 149059 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 8 at @s in switch:game run particle cloud 149071 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 8 at @s run clone from minecraft:overworld 149067 ~ 149000 149076 ~ 149350 to switch:game 149067 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 9 at @s in switch:game run particle cloud 149080 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 9 at @s run clone from minecraft:overworld 149076 ~ 149000 149084 ~ 149350 to switch:game 149076 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 10 at @s in switch:game run particle cloud 149088 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 10 at @s run clone from minecraft:overworld 149084 ~ 149000 149093 ~ 149350 to switch:game 149084 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 11 at @s in switch:game run particle cloud 149097 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 11 at @s run clone from minecraft:overworld 149093 ~ 149000 149101 ~ 149350 to switch:game 149093 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 12 at @s in switch:game run particle cloud 149105 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 12 at @s run clone from minecraft:overworld 149101 ~ 149000 149109 ~ 149350 to switch:game 149101 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 13 at @s in switch:game run particle cloud 149113 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 13 at @s run clone from minecraft:overworld 149109 ~ 149000 149118 ~ 149350 to switch:game 149109 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 14 at @s in switch:game run particle cloud 149122 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 14 at @s run clone from minecraft:overworld 149118 ~ 149000 149126 ~ 149350 to switch:game 149118 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 15 at @s in switch:game run particle cloud 149130 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 15 at @s run clone from minecraft:overworld 149126 ~ 149000 149135 ~ 149350 to switch:game 149126 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 16 at @s in switch:game run particle cloud 149139 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 16 at @s run clone from minecraft:overworld 149135 ~ 149000 149143 ~ 149350 to switch:game 149135 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 17 at @s in switch:game run particle cloud 149147 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 17 at @s run clone from minecraft:overworld 149143 ~ 149000 149152 ~ 149350 to switch:game 149143 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 18 at @s in switch:game run particle cloud 149156 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 18 at @s run clone from minecraft:overworld 149152 ~ 149000 149160 ~ 149350 to switch:game 149152 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 19 at @s in switch:game run particle cloud 149164 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 19 at @s run clone from minecraft:overworld 149160 ~ 149000 149168 ~ 149350 to switch:game 149160 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 20 at @s in switch:game run particle cloud 149172 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 20 at @s run clone from minecraft:overworld 149168 ~ 149000 149177 ~ 149350 to switch:game 149168 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 21 at @s in switch:game run particle cloud 149181 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 21 at @s run clone from minecraft:overworld 149177 ~ 149000 149185 ~ 149350 to switch:game 149177 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 22 at @s in switch:game run particle cloud 149189 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 22 at @s run clone from minecraft:overworld 149185 ~ 149000 149194 ~ 149350 to switch:game 149185 ~0 149000 replace force

execute if score #rg_ctf_nether_mod switch.data matches 23 at @s in switch:game run particle cloud 149198 ~0.5 149175 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 23 at @s run clone from minecraft:overworld 149194 ~ 149000 149202 ~ 149350 to switch:game 149194 ~0 149000 replace force

scoreboard players add #rg_ctf_nether_mod switch.data 1
execute if score #rg_ctf_nether_mod switch.data matches 24 in switch:game run kill @e[type=item,x=149101,y=100,z=149175,distance=..1000]
execute if score #rg_ctf_nether_mod switch.data matches 24 run scoreboard players add #rg_ctf_nether_y switch.data 1
execute if score #rg_ctf_nether_mod switch.data matches 24 run scoreboard players set #rg_ctf_nether_mod switch.data 0

kill @s

