
# Change game state
scoreboard players set #build_battle_state switch.data 1
scoreboard players set #remaining_time switch.data 300
effect clear @a[tag=!detached] levitation
gamemode creative @a[tag=!detached]
clear @a[tag=!detached]

# Get most voted word
scoreboard players operation #max switch.data = #vote_theme_1 switch.data
scoreboard players operation #max switch.data > #vote_theme_2 switch.data
scoreboard players operation #max switch.data > #vote_theme_3 switch.data
scoreboard players operation #max switch.data > #vote_theme_4 switch.data
scoreboard players operation #max switch.data > #vote_theme_5 switch.data
scoreboard players set #index switch.data 0
execute if score #vote_theme_1 switch.data = #max switch.data run scoreboard players set #index switch.data 1
execute if score #vote_theme_2 switch.data = #max switch.data if score #index switch.data matches 0 run scoreboard players set #index switch.data 2
execute if score #vote_theme_3 switch.data = #max switch.data if score #index switch.data matches 0 run scoreboard players set #index switch.data 3
execute if score #vote_theme_4 switch.data = #max switch.data if score #index switch.data matches 0 run scoreboard players set #index switch.data 4
execute if score #vote_theme_5 switch.data = #max switch.data if score #index switch.data matches 0 run scoreboard players set #index switch.data 5
execute if score #vote_theme_2 switch.data = #max switch.data if score #index switch.data matches 1.. if predicate switch:chance/0.5 run scoreboard players set #index switch.data 2
execute if score #vote_theme_3 switch.data = #max switch.data if score #index switch.data matches 1.. if predicate switch:chance/0.5 run scoreboard players set #index switch.data 3
execute if score #vote_theme_4 switch.data = #max switch.data if score #index switch.data matches 1.. if predicate switch:chance/0.5 run scoreboard players set #index switch.data 4
execute if score #vote_theme_5 switch.data = #max switch.data if score #index switch.data matches 1.. if predicate switch:chance/0.5 run scoreboard players set #index switch.data 5
execute if score #index switch.data matches 1 run data modify storage switch:main current_theme set from storage switch:main themes.theme1
execute if score #index switch.data matches 2 run data modify storage switch:main current_theme set from storage switch:main themes.theme2
execute if score #index switch.data matches 3 run data modify storage switch:main current_theme set from storage switch:main themes.theme3
execute if score #index switch.data matches 4 run data modify storage switch:main current_theme set from storage switch:main themes.theme4
execute if score #index switch.data matches 5 run data modify storage switch:main current_theme set from storage switch:main themes.theme5

# Tellraw start + playsound
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le thème choisi est "},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":" !"}]
title @a[tag=!detached] times 20 60 20
title @a[tag=!detached] title {"text":"Thème choisi", "color":"aqua"}
title @a[tag=!detached] subtitle {"nbt":"current_theme","storage":"switch:main","color":"yellow"}
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

