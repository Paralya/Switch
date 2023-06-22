
scoreboard players add #rg_dark_forest_hills switch.data 1
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39000 39000 39013 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39013 39000 39026 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39026 39000 39039 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39039 39000 39052 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39052 39000 39065 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39065 39000 39078 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39078 39000 39091 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39091 39000 39104 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39104 39000 39117 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39117 39000 39130 39221
execute if score #rg_dark_forest_hills switch.data matches 1 run forceload add 39130 39000 39143 39221

execute if score #rg_dark_forest_hills switch.data matches 1 run scoreboard players set #rg_dark_forest_hills_y switch.data -64
execute if score #rg_dark_forest_hills switch.data matches 1 run scoreboard players set #rg_dark_forest_hills_mod switch.data 0
execute if score #rg_dark_forest_hills switch.data matches ..759 summon marker run function switch:maps/survival/dark_forest_hills/regeneration_on_marker

execute if score #rg_dark_forest_hills switch.data matches 760.. run kill @e[type=item,x=39071,y=0,z=39110,distance=..1000]
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39000 39000 39013 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39013 39000 39026 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39026 39000 39039 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39039 39000 39052 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39052 39000 39065 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39065 39000 39078 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39078 39000 39091 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39091 39000 39104 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39104 39000 39117 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39117 39000 39130 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run forceload remove 39130 39000 39143 39221
execute if score #rg_dark_forest_hills switch.data matches 760.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"dark_forest_hills","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"38","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_dark_forest_hills switch.data matches 760.. run scoreboard players reset #rg_dark_forest_hills switch.data

execute if score #rg_dark_forest_hills switch.data matches 1.. run schedule function switch:maps/survival/dark_forest_hills/regenerate 1t

