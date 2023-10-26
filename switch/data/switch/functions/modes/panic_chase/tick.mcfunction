
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #panic_chase_ticks switch.data 1

# Détection de la mort d'un joueur
execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/panic_chase/death

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/panic_chase/no_drop

# Détection de fin de partie
execute if score #remaining_time switch.data matches 0.. run function switch:modes/panic_chase/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/panic_chase/process_end

