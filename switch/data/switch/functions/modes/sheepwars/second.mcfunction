
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #sheepwars_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# 15 seconds give sheeps
scoreboard players operation #sheep_give switch.data = #sheepwars_seconds switch.data
scoreboard players operation #sheep_give switch.data %= #15 switch.data
#scoreboard players operation #sheep_give switch.data %= #1 switch.data
execute if score #sheep_give switch.data matches 0 as @a run function sheepwars:utils/random_give
execute if score #sheep_give switch.data matches 0 as @a at @s run playsound entity.sheep.ambient ambient @s

# 30 seconds laines magiques

# Night if intergalactique
scoreboard players add #sheepwars_night switch.data 0
execute if score #sheepwars_night switch.data matches 0 if entity @e[type=sheep,tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night switch.data 1
execute if score #sheepwars_night switch.data matches 1 run tellraw @a [{"text":"[SheepWars] Une nuit intergalactique commence !","color":"blue"}]
execute if score #sheepwars_night switch.data matches 1 as @a at @s run playsound entity.wither.spawn ambient @s
execute if score #sheepwars_night switch.data matches 1 run time set 18000
execute if score #sheepwars_night switch.data matches 1 run scoreboard players set #sheepwars_night switch.data 2
execute if score #sheepwars_night switch.data matches 2 unless entity @e[tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night switch.data 3
execute if score #sheepwars_night switch.data matches 3 run time set 6000
execute if score #sheepwars_night switch.data matches 3 run scoreboard players set #sheepwars_night switch.data 0



