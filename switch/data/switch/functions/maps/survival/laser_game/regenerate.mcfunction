
scoreboard players add #rg_laser_game switch.data 1
execute if score #rg_laser_game switch.data matches 1 run forceload add 499 499 525 551
execute if score #rg_laser_game switch.data matches 1 run forceload add 525 499 551 551

execute if score #rg_laser_game switch.data matches 1 run scoreboard players set #rg_laser_game_y switch.data 0
execute if score #rg_laser_game switch.data matches 1 run scoreboard players set #rg_laser_game_mod switch.data 0
execute if score #rg_laser_game switch.data matches ..88 summon marker run function switch:maps/survival/laser_game/regeneration_on_marker

execute if score #rg_laser_game switch.data matches 89.. run kill @e[type=item,x=525,y=0,z=525,distance=..1000]
execute if score #rg_laser_game switch.data matches 89.. run forceload remove 499 499 525 551
execute if score #rg_laser_game switch.data matches 89.. run forceload remove 525 499 551 551
execute if score #rg_laser_game switch.data matches 89.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"laser_game","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"04","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_laser_game switch.data matches 89.. run scoreboard players reset #rg_laser_game switch.data

execute if score #rg_laser_game switch.data matches 1.. run schedule function switch:maps/survival/laser_game/regenerate 1t

