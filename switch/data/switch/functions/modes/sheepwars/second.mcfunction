
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #sheepwars_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Mise en survie au début du jeu
execute if score #sheepwars_seconds switch.data matches 0 run gamemode survival @a[gamemode=adventure]

# 15 seconds give sheeps
# 20 seconds laines magiques

