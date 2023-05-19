
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #layers_4_teams_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Mise en survie au début du jeu
execute if score #layers_4_teams_seconds switch.data matches 0 run gamemode survival @a[gamemode=adventure]

# Affichage du temps restants
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
title @a actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]


