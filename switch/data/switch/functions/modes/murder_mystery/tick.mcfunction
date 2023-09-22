
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #murder_mystery_ticks switch.data 1

# Détection des morts
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/murder_mystery/death

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/coin_chaser/no_drop

## Détection de fin de partie
execute if score #murder_mystery_seconds switch.data matches 0.. if score #remaining_time switch.data matches 1.. run function switch:modes/murder_mystery/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/murder_mystery/process_end

