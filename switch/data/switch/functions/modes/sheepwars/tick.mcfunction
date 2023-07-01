
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #sheepwars_ticks switch.data 1

# Reduce arrow damage and kill every unexcepted items
execute as @e[type=arrow,nbt={damage:2.0d}] run data modify entity @s damage set value 1.0d
kill @e[type=item,nbt=!{Item:{tag:{}}}]

# Détection des morts
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/sheepwars/death

# Tick du sheepwars
function sheepwars:tick

# Kill too low entities
execute as @e[type=!player,type=!lightning_bolt,predicate=switch:between/100_and_110] run function sheepwars:sheeps/final/disappear

# Night if intergalactique
scoreboard players add #sheepwars_night switch.data 0
execute if score #sheepwars_night switch.data matches 0 if entity @e[type=sheep,tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night switch.data 1
execute if score #sheepwars_night switch.data matches 1 run tellraw @a [{"text":"[SheepWars] ","color":"yellow"},{"text":"Une nuit intergalactique commence !","color":"blue"}]
execute if score #sheepwars_night switch.data matches 1 as @a at @s run playsound entity.wither.spawn ambient @s
execute if score #sheepwars_night switch.data matches 1 run time set 18000
execute if score #sheepwars_night switch.data matches 1 run scoreboard players set #sheepwars_night switch.data 2
execute if score #sheepwars_night switch.data matches 2 unless entity @e[tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night switch.data 3
execute if score #sheepwars_night switch.data matches 3 run time set 6000
execute if score #sheepwars_night switch.data matches 3 run scoreboard players set #sheepwars_night switch.data 0


## Détection de fin de partie
#execute if score #remaining_time switch.data matches 1.. run function switch:modes/sheepwars/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/sheepwars/process_end

