
##Run into a banana
scoreboard players set #banana shopping_kart.data 0
execute as @e[tag=shopping_kart.banana,distance=..1] run function shopping_kart:modes/mario_kart/items/banana/run_into
execute if score #banana shopping_kart.data matches 1 run scoreboard players set @s shopping_kart.engine 100
execute if score #banana shopping_kart.data matches 1 run particle lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..50]
execute if score #banana shopping_kart.data matches 1 run playsound block.anvil.land block @a ~ ~ ~ 1 0.1

