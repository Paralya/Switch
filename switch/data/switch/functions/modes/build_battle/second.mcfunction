
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #build_battle_seconds switch.data 1

# XP Bar
execute if score #build_battle_state switch.data matches 0 run function switch:modes/build_battle/xp_bar

# Change every ground blocks to grass_block
execute if score #build_battle_state switch.data matches 0 at @e[tag=switch.build_battle_marker] run setblock ~3 ~-2 ~3 air
execute if score #build_battle_state switch.data matches 0 at @e[tag=switch.build_battle_marker] run setblock ~3 ~2 ~3 grass_block

# Start the building time when the voting time is over
execute if score #build_battle_state switch.data matches 0 if score #build_battle_seconds switch.data matches 0.. run function switch:modes/build_battle/building_time/start

# Show timer + current theme
execute if score #build_battle_state switch.data matches 1 run scoreboard players remove #remaining_time switch.data 1
execute if score #build_battle_state switch.data matches 1 run scoreboard players operation #second switch.data = #remaining_time switch.data
execute if score #build_battle_state switch.data matches 1 run scoreboard players operation #minute switch.data = #remaining_time switch.data
execute if score #build_battle_state switch.data matches 1 run scoreboard players operation #second switch.data %= #60 switch.data
execute if score #build_battle_state switch.data matches 1 run scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #build_battle_state switch.data matches 1 if score #second switch.data matches ..9 run title @a actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #build_battle_state switch.data matches 1 if score #second switch.data matches 10.. run title @a actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 120 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes pour terminer votre construction !","color":"red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 60 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"1","color":"yellow"},{"text":" minute pour terminer votre construction !","color":"red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 10 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"10","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 5 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"5","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 4 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"4","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 3 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"3","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 2 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"2","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 1 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"1","color":"red"},{"text":" seconde pour terminer votre construction !","color":"dark_red"}]
execute if score #build_battle_state switch.data matches 1 if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/rating_time/start


# Prevent people from leaving area
execute if score #build_battle_state switch.data matches ..1 as @a[gamemode=!spectator,scores={switch.temp.id=0..}] run function switch:modes/build_battle/prevent_leaving_area

