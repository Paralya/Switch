
#> switch:maps/survival/sheepwars_ilots/regeneration_on_marker
#
# @within	switch:maps/survival/sheepwars_ilots/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sheepwars_ilots_y switch.data

execute if score #rg_sheepwars_ilots_mod switch.data matches 0 at @s in switch:game run particle cloud 145009 ~0.5 145061 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 0 at @s run clone from minecraft:overworld 145000 ~ 145000 145018 ~ 145122 to switch:game 145000 ~0 145000 replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 1 at @s in switch:game run particle cloud 145027 ~0.5 145061 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 1 at @s run clone from minecraft:overworld 145018 ~ 145000 145037 ~ 145122 to switch:game 145018 ~0 145000 replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 2 at @s in switch:game run particle cloud 145046 ~0.5 145061 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 2 at @s run clone from minecraft:overworld 145037 ~ 145000 145055 ~ 145122 to switch:game 145037 ~0 145000 replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 3 at @s in switch:game run particle cloud 145064 ~0.5 145061 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 3 at @s run clone from minecraft:overworld 145055 ~ 145000 145074 ~ 145122 to switch:game 145055 ~0 145000 replace force

execute if score #rg_sheepwars_ilots_mod switch.data matches 4 at @s in switch:game run particle cloud 145083 ~0.5 145061 9 0 30 0 250 force
execute if score #rg_sheepwars_ilots_mod switch.data matches 4 at @s run clone from minecraft:overworld 145074 ~ 145000 145092 ~ 145122 to switch:game 145074 ~0 145000 replace force

scoreboard players add #rg_sheepwars_ilots_mod switch.data 1
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 in switch:game run kill @e[type=item,x=145046,y=100,z=145061,distance=..1000]
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 run scoreboard players add #rg_sheepwars_ilots_y switch.data 1
execute if score #rg_sheepwars_ilots_mod switch.data matches 5 run scoreboard players set #rg_sheepwars_ilots_mod switch.data 0

kill @s

