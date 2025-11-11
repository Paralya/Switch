
#> switch:maps/survival/dk_mountain/regeneration_on_marker
#
# @within	switch:maps/survival/dk_mountain/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_dk_mountain_y switch.data

execute if score #rg_dk_mountain_mod switch.data matches 0 at @s in switch:game run particle cloud 19662 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 0 at @s run clone from minecraft:overworld 19650 ~ 20485 19674 ~ 20603 to switch:game 19650 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 1 at @s in switch:game run particle cloud 19686 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 1 at @s run clone from minecraft:overworld 19674 ~ 20485 19698 ~ 20603 to switch:game 19674 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 2 at @s in switch:game run particle cloud 19710 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 2 at @s run clone from minecraft:overworld 19698 ~ 20485 19722 ~ 20603 to switch:game 19698 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 3 at @s in switch:game run particle cloud 19734 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 3 at @s run clone from minecraft:overworld 19722 ~ 20485 19746 ~ 20603 to switch:game 19722 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 4 at @s in switch:game run particle cloud 19758 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 4 at @s run clone from minecraft:overworld 19746 ~ 20485 19770 ~ 20603 to switch:game 19746 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 5 at @s in switch:game run particle cloud 19782 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 5 at @s run clone from minecraft:overworld 19770 ~ 20485 19794 ~ 20603 to switch:game 19770 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 6 at @s in switch:game run particle cloud 19806 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 6 at @s run clone from minecraft:overworld 19794 ~ 20485 19818 ~ 20603 to switch:game 19794 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 7 at @s in switch:game run particle cloud 19830 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 7 at @s run clone from minecraft:overworld 19818 ~ 20485 19842 ~ 20603 to switch:game 19818 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 8 at @s in switch:game run particle cloud 19854 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 8 at @s run clone from minecraft:overworld 19842 ~ 20485 19866 ~ 20603 to switch:game 19842 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 9 at @s in switch:game run particle cloud 19878 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 9 at @s run clone from minecraft:overworld 19866 ~ 20485 19890 ~ 20603 to switch:game 19866 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 10 at @s in switch:game run particle cloud 19902 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 10 at @s run clone from minecraft:overworld 19890 ~ 20485 19914 ~ 20603 to switch:game 19890 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 11 at @s in switch:game run particle cloud 19926 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 11 at @s run clone from minecraft:overworld 19914 ~ 20485 19938 ~ 20603 to switch:game 19914 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 12 at @s in switch:game run particle cloud 19950 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 12 at @s run clone from minecraft:overworld 19938 ~ 20485 19962 ~ 20603 to switch:game 19938 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 13 at @s in switch:game run particle cloud 19974 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 13 at @s run clone from minecraft:overworld 19962 ~ 20485 19986 ~ 20603 to switch:game 19962 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 14 at @s in switch:game run particle cloud 19998 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 14 at @s run clone from minecraft:overworld 19986 ~ 20485 20010 ~ 20603 to switch:game 19986 ~0 20485 strict replace force

execute if score #rg_dk_mountain_mod switch.data matches 15 at @s in switch:game run particle cloud 20022 ~0.5 20544 12 0 29 0 250 force
execute if score #rg_dk_mountain_mod switch.data matches 15 at @s run clone from minecraft:overworld 20010 ~ 20485 20034 ~ 20603 to switch:game 20010 ~0 20485 strict replace force

scoreboard players add #rg_dk_mountain_mod switch.data 1
execute if score #rg_dk_mountain_mod switch.data matches 16 in switch:game run kill @e[type=item,x=19842,y=70,z=20544,distance=..1000]
execute if score #rg_dk_mountain_mod switch.data matches 16 run scoreboard players add #rg_dk_mountain_y switch.data 1
execute if score #rg_dk_mountain_mod switch.data matches 16 run scoreboard players set #rg_dk_mountain_mod switch.data 0

kill @s

