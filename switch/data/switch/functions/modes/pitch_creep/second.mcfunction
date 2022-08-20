
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1

execute if score #pitch_creep_seconds switch.data matches 5.. run summon creeper 100 99 110

