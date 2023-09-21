
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #feed_fast_ticks switch.data 1

# Autres
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/feed_fast/death
effect give @a[scores={switch.alive=1..},nbt={foodLevel:0}] wither 1 2 true
effect clear @a[scores={switch.alive=1..},nbt=!{foodLevel:0}] wither


# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #remaining_time switch.data matches 1.. unless entity @a[scores={switch.alive=1..}] run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/feed_fast/process_end

