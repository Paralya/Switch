
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. as @a run summon creeper 100 100.69 110 {AbsorptionAmount:2048f}

