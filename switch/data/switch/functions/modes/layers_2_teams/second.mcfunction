
# Timer
scoreboard players add #layers_2_teams_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Mise en survie au début du jeu
execute if score #layers_2_teams_seconds switch.data matches 0 run gamemode survival @a[tag=!detached,gamemode=adventure]

# Affichage du temps restants
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
title @a[tag=!detached] actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]

# Glowing pour les joueurs isolés au bout de 5 minutes restantes
execute if score #mins switch.data matches ..4 as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..15] run effect give @s glowing 2 0 true

# Destruction des blocs de haut en bas à partir de 5 minutes restantes
execute if score #mins switch.data matches 5 if score #secs switch.data matches 0 run summon marker 0 160 0 {Tags:["switch.layers_2_teams.marker"]}
execute if score #mins switch.data matches ..4 at @e[tag=switch.layers_2_teams.marker] run fill 26983 ~ 26970 27017 ~10 27030 air replace #realistic_explosion:equal_and_below_1200
execute if score #mins switch.data matches ..4 as @e[tag=switch.layers_2_teams.marker] store result score #pos_y switch.data run data get entity @s Pos[1]
execute if score #mins switch.data matches ..4 if score #pos_y switch.data matches 109.. as @e[tag=switch.layers_2_teams.marker] at @s run tp @s ~ ~-0.5 ~
execute if score #mins switch.data matches ..4 if score #pos_y switch.data matches ..108 run kill @e[tag=switch.layers_2_teams.marker]

