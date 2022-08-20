
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_ticks switch.data 1

kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=experience_orb]

execute as @a[scores={switch.temp.deathCount=1..}] run function switch:modes/pitch_creep/death

execute unless entity @a[tag=switch.alive] run function switch:modes/pitch_creep/process_end
execute if score #pitch_creep_seconds switch.data matches 90.. run function switch:modes/pitch_creep/process_end
