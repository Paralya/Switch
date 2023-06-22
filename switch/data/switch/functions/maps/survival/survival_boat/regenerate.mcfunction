
scoreboard players add #rg_survival_boat switch.data 1
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79000 79000 79021 79102
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79021 79000 79042 79102
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79042 79000 79063 79102
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79063 79000 79084 79102
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79084 79000 79105 79102
execute if score #rg_survival_boat switch.data matches 1 run forceload add 79105 79000 79126 79102

execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_y switch.data -64
execute if score #rg_survival_boat switch.data matches 1 run scoreboard players set #rg_survival_boat_mod switch.data 0
execute if score #rg_survival_boat switch.data matches ..594 summon marker run function switch:maps/survival/survival_boat/regeneration_on_marker

execute if score #rg_survival_boat switch.data matches 595.. run kill @e[type=item,x=79063,y=0,z=79051,distance=..1000]
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79000 79000 79021 79102
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79021 79000 79042 79102
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79042 79000 79063 79102
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79063 79000 79084 79102
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79084 79000 79105 79102
execute if score #rg_survival_boat switch.data matches 595.. run forceload remove 79105 79000 79126 79102
execute if score #rg_survival_boat switch.data matches 595.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"survival_boat","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_survival_boat switch.data matches 595.. run scoreboard players reset #rg_survival_boat switch.data

execute if score #rg_survival_boat switch.data matches 1.. run schedule function switch:maps/survival/survival_boat/regenerate 1t

