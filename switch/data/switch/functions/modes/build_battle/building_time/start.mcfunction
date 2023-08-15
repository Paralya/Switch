
scoreboard players set #build_battle_state switch.data 1
effect clear @a levitation
gamemode creative @a
clear @a

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
execute if score #index switch.data matches 1 run data modify storage switch:main current_theme set from storage switch:main choosed_themes[0]
execute if score #index switch.data matches 2 run data modify storage switch:main current_theme set from storage switch:main choosed_themes[1]
execute if score #index switch.data matches 3 run data modify storage switch:main current_theme set from storage switch:main choosed_themes[2]
execute if score #index switch.data matches 4 run data modify storage switch:main current_theme set from storage switch:main choosed_themes[3]
execute if score #index switch.data matches 5 run data modify storage switch:main current_theme set from storage switch:main choosed_themes[4]

# Tellraw start + playsound
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le thème choisi est "},{"nbt":"current_theme","storage":"switch:main","color":"aqua"},{"text":" !"}]
title @a title {"text":"Thème choisi", "color":"yellow"}
title @a subtitle {"nbt":"current_theme","storage":"switch:main","color":"aqua"}
execute as @a at @s run playsound entity.player.levelup ambient @s

