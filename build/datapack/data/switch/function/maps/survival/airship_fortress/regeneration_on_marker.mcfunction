
#> switch:maps/survival/airship_fortress/regeneration_on_marker
#
# @within	switch:maps/survival/airship_fortress/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_airship_fortress_y switch.data

execute if score #rg_airship_fortress_mod switch.data matches 0 at @s in switch:game run particle cloud 20613 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 0 at @s run clone from minecraft:overworld 20606 ~ 20227 20621 ~ 20426 to switch:game 20606 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 1 at @s in switch:game run particle cloud 20628 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 1 at @s run clone from minecraft:overworld 20621 ~ 20227 20635 ~ 20426 to switch:game 20621 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 2 at @s in switch:game run particle cloud 20642 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 2 at @s run clone from minecraft:overworld 20635 ~ 20227 20650 ~ 20426 to switch:game 20635 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 3 at @s in switch:game run particle cloud 20657 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 3 at @s run clone from minecraft:overworld 20650 ~ 20227 20664 ~ 20426 to switch:game 20650 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 4 at @s in switch:game run particle cloud 20671 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 4 at @s run clone from minecraft:overworld 20664 ~ 20227 20679 ~ 20426 to switch:game 20664 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 5 at @s in switch:game run particle cloud 20686 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 5 at @s run clone from minecraft:overworld 20679 ~ 20227 20694 ~ 20426 to switch:game 20679 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 6 at @s in switch:game run particle cloud 20701 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 6 at @s run clone from minecraft:overworld 20694 ~ 20227 20708 ~ 20426 to switch:game 20694 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 7 at @s in switch:game run particle cloud 20715 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 7 at @s run clone from minecraft:overworld 20708 ~ 20227 20723 ~ 20426 to switch:game 20708 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 8 at @s in switch:game run particle cloud 20730 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 8 at @s run clone from minecraft:overworld 20723 ~ 20227 20737 ~ 20426 to switch:game 20723 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 9 at @s in switch:game run particle cloud 20744 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 9 at @s run clone from minecraft:overworld 20737 ~ 20227 20752 ~ 20426 to switch:game 20737 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 10 at @s in switch:game run particle cloud 20759 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 10 at @s run clone from minecraft:overworld 20752 ~ 20227 20766 ~ 20426 to switch:game 20752 ~0 20227 strict replace force

execute if score #rg_airship_fortress_mod switch.data matches 11 at @s in switch:game run particle cloud 20773 ~0.5 20326 7 0 49 0 250 force
execute if score #rg_airship_fortress_mod switch.data matches 11 at @s run clone from minecraft:overworld 20766 ~ 20227 20781 ~ 20426 to switch:game 20766 ~0 20227 strict replace force

scoreboard players add #rg_airship_fortress_mod switch.data 1
execute if score #rg_airship_fortress_mod switch.data matches 12 in switch:game run kill @e[type=item,x=20693,y=70,z=20326,distance=..1000]
execute if score #rg_airship_fortress_mod switch.data matches 12 run scoreboard players add #rg_airship_fortress_y switch.data 1
execute if score #rg_airship_fortress_mod switch.data matches 12 run scoreboard players set #rg_airship_fortress_mod switch.data 0

kill @s

