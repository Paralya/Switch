
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #sheepwars_ticks switch.data 1

# Reduce arrow damage
execute as @e[type=arrow,nbt={damage:2.0d}] run data modify entity @s damage set value 1.0d

# Détection des morts
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/sheepwars/death

# Tick du sheepwars
function sheepwars:tick

## Détection de fin de partie
#execute if score #remaining_time switch.data matches 1.. run function switch:modes/sheepwars/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/sheepwars/process_end

