
scoreboard players add #rg_desert_grand_library switch.data 1
execute if score #rg_desert_grand_library switch.data matches 1 run forceload add 46971 46971 46993 47042
execute if score #rg_desert_grand_library switch.data matches 1 run forceload add 46993 46971 47014 47042
execute if score #rg_desert_grand_library switch.data matches 1 run forceload add 47014 46971 47036 47042

execute if score #rg_desert_grand_library switch.data matches 1 run scoreboard players set #rg_desert_grand_library_y switch.data 0
execute if score #rg_desert_grand_library switch.data matches 1 run scoreboard players set #rg_desert_grand_library_mod switch.data 0
execute if score #rg_desert_grand_library switch.data matches ..129 summon marker run function switch:maps/survival/desert_grand_library/regeneration_on_marker

execute if score #rg_desert_grand_library switch.data matches 130.. run kill @e[type=item,x=47003,y=0,z=47006,distance=..1000]
execute if score #rg_desert_grand_library switch.data matches 130.. run forceload remove 46971 46971 46993 47042
execute if score #rg_desert_grand_library switch.data matches 130.. run forceload remove 46993 46971 47014 47042
execute if score #rg_desert_grand_library switch.data matches 130.. run forceload remove 47014 46971 47036 47042
execute if score #rg_desert_grand_library switch.data matches 130.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"desert_grand_library","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_desert_grand_library switch.data matches 130.. run data modify storage switch:main MessageToLog set value '{"text": "La map `desert_grand_library` a fini sa regeneration !"}'
execute if score #rg_desert_grand_library switch.data matches 130.. run function switch:engine/log_message/apply
execute if score #rg_desert_grand_library switch.data matches 130.. run scoreboard players reset #rg_desert_grand_library switch.data

execute if score #rg_desert_grand_library switch.data matches 1.. run schedule function switch:maps/survival/desert_grand_library/regenerate 1t

