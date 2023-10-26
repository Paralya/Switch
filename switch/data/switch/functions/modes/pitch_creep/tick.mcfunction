
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_ticks switch.data 1

kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=experience_orb]

execute as @a[x=0,y=69,z=0,distance=..10] run function switch:modes/pitch_creep/death
execute at @e[type=marker,tag=switch.selected_map,limit=1] run kill @a[distance=50..,scores={switch.alive=1..}]

execute unless entity @a[scores={switch.alive=1..}] run function switch:modes/pitch_creep/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/pitch_creep/process_end

