
# Show timer + current theme
scoreboard players remove #remaining_time switch.data 1
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #second switch.data matches ..9 run title @a[tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #second switch.data matches 10.. run title @a[tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# When 4m30 remains, the players can vote to increase the time for 5 minutes (if 75% of the players vote yes), voting time is 30 seconds
execute if score #remaining_time switch.data matches 270 run scoreboard players reset * switch.temp.theme_vote
execute if score #remaining_time switch.data matches 270 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Voulez-vous augmenter le temps de construction de 5 minutes ? (75% des joueurs doivent voter oui)","color":"green"}]
execute if score #remaining_time switch.data matches 270 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Si oui, vous avez 30 secondes pour cliquer [ici]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.temp.theme_vote set 1"}}]
execute if score #remaining_time switch.data matches 270 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 240 run function switch:modes/build_battle/building_time/check_increase_time

# Remaining time warning
execute if score #remaining_time switch.data matches 120 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 120 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 60 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"1","color":"yellow"},{"text":" minute pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 60 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 10 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"10","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 10 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 5 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"5","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 5 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 4 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"4","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 4 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 3 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"3","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 3 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 2 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"2","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 2 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"1","color":"red"},{"text":" seconde pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches ..0 run function switch:modes/build_battle/rating_time/start

