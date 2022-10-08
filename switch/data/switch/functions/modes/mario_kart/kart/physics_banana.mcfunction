
##Run into a banana
scoreboard players set #banana switch.data 0
execute as @e[tag=switch.banana,distance=..1] run function switch:modes/mario_kart/items/banana/run_into
execute if score #banana switch.data matches 1 run scoreboard players set @s switch.temp.engine 100
execute if score #banana switch.data matches 1 run particle lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..50]
execute if score #banana switch.data matches 1 run playsound block.anvil.land block @a ~ ~ ~ 1 0.1
