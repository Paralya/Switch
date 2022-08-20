
##Fonction executée tous les ticks lorsque le mode de jeu est activé

#say message envoyé tous les ticks

scoreboard players add #pitch_creep_ticks switch.data 1

kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=experience_orb]
