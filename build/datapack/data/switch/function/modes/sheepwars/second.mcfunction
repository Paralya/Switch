
#> switch:modes/sheepwars/second
#
# @within	switch:modes/sheepwars/calls/second
#

# Timer
scoreboard players add #sheepwars_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #blue_fire_arrows switch.data matches 1.. run scoreboard players remove #blue_fire_arrows switch.data 1
execute if score #blue_explosive_arrows switch.data matches 1.. run scoreboard players remove #blue_explosive_arrows switch.data 1
execute if score #red_fire_arrows switch.data matches 1.. run scoreboard players remove #red_fire_arrows switch.data 1
execute if score #red_explosive_arrows switch.data matches 1.. run scoreboard players remove #red_explosive_arrows switch.data 1

# Small fixes
kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:fire"},OnGround:true}]

# Every minute, decrease the delay between the give of sheeps (minimum 2 seconds between each sheep)
scoreboard players operation #minute_clock switch.data = #sheepwars_seconds switch.data
scoreboard players operation #minute_clock switch.data %= #60 switch.data
execute if score #minute_clock switch.data matches 30 if score #sheep_give_delay switch.data matches 3.. run scoreboard players remove #sheep_give_delay switch.data 1

# Give sheeps every X seconds (decrease every minute. If apocalypse, give a sheep every 2 seconds)
scoreboard players operation #sheep_give switch.data = #sheepwars_seconds switch.data
scoreboard players operation #sheep_give switch.data %= #sheep_give_delay switch.data
execute if score #APOCALYPSE_GAME switch.data matches 1 run scoreboard players operation #sheep_give switch.data %= #2 switch.data
execute if score #sheep_give switch.data matches 0 as @a[tag=!detached,gamemode=!spectator] run function switch:modes/sheepwars/random_give

# Magic wool every 30 seconds (if apocalypse, at 5 and 20 seconds out of 30 seconds)
scoreboard players operation #magic_wool switch.data = #sheepwars_seconds switch.data
scoreboard players operation #magic_wool switch.data %= #30 switch.data
execute if score #APOCALYPSE_GAME switch.data matches 1 if score #magic_wool switch.data matches 5 run scoreboard players set #magic_wool switch.data 20
execute if score #remaining_time switch.data matches 1.. if score #magic_wool switch.data matches 20 run function switch:modes/sheepwars/magic_wool/place

# Humm Charal advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.killed_sheep=10..}] only switch:visible/45

function switch:translations/modes_sheepwars_second

