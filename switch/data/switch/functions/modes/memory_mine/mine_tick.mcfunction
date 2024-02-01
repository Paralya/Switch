
execute unless score @s switch.temp.cooldown matches 60 run scoreboard players add @s switch.temp.cooldown 1
execute if score @s switch.temp.cooldown matches 60 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 1 1 force @a[gamemode=spectator,distance=..50]
execute if score @s switch.temp.cooldown matches 60 if predicate switch:chance/0.01 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 1 100 force @a[distance=..50]
execute if score @s switch.temp.cooldown matches 60 run scoreboard players set #success switch.data 0
execute if score @s switch.temp.cooldown matches 60 run scoreboard players operation #owner_id switch.data = @s switch.id
execute if score @s switch.temp.cooldown matches 60 store success score #success switch.data as @a[tag=!detached,gamemode=adventure,distance=..0.5] run function switch:modes/memory_mine/death
execute if score @s switch.temp.cooldown matches 60 run scoreboard players reset #owner_id switch.data
execute if score @s switch.temp.cooldown matches 60 if score #success switch.data matches 1 run kill @s

