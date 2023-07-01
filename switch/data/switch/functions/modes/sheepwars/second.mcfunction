
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #sheepwars_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Small fix
kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:fire"},OnGround:1b}]

# 15 seconds give sheeps
scoreboard players operation #sheep_give switch.data = #sheepwars_seconds switch.data
scoreboard players operation #sheep_give switch.data %= #15 switch.data
execute if score #APOCALYPSE_GAME switch.data matches 1 run scoreboard players set #number_of_drops sheepwars.data 3
execute if score #APOCALYPSE_GAME switch.data matches 1 as @a[gamemode=!spectator] run function sheepwars:utils/random_give
execute if score #sheep_give switch.data matches 0 as @a[gamemode=!spectator] run function sheepwars:utils/random_give
execute if score #sheep_give switch.data matches 0 as @a[gamemode=!spectator] at @s run playsound entity.sheep.ambient ambient @s

# 30 seconds laines magiques


