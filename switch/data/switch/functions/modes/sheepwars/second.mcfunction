
# Timer
scoreboard players add #sheepwars_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #blue_fire_arrows switch.data matches 1.. run scoreboard players remove #blue_fire_arrows switch.data 1
execute if score #blue_explosive_arrows switch.data matches 1.. run scoreboard players remove #blue_explosive_arrows switch.data 1
execute if score #red_fire_arrows switch.data matches 1.. run scoreboard players remove #red_fire_arrows switch.data 1
execute if score #red_explosive_arrows switch.data matches 1.. run scoreboard players remove #red_explosive_arrows switch.data 1

# Small fixes
kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:fire"},OnGround:1b}]

# 15 seconds give sheeps
scoreboard players operation #sheep_give switch.data = #sheepwars_seconds switch.data
scoreboard players operation #sheep_give switch.data %= #20 switch.data
execute if score #sheep_give switch.data matches 0 as @a[tag=!detached,gamemode=!spectator] run function switch:modes/sheepwars/random_give

# 30 seconds laines magiques
scoreboard players operation #magic_wool switch.data = #sheepwars_seconds switch.data
scoreboard players operation #magic_wool switch.data %= #20 switch.data
execute if score #APOCALYPSE_GAME switch.data matches 1 if score #magic_wool switch.data matches 5 run scoreboard players set #magic_wool switch.data 15
execute if score #magic_wool switch.data matches 15 run function switch:modes/sheepwars/magic_wool/place

