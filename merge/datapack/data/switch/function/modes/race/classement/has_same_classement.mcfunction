
scoreboard players operation #checkpoint switch.data = @s switch.temp.checkpoint
tag @a[tag=!detached,predicate=switch:has_same_temp_checkpoint] add switch.process

scoreboard players operation #checkpoint switch.data = @s switch.checkpoint
scoreboard players add #checkpoint switch.data 1
scoreboard players operation #checkpoint switch.data %= #modulo switch.data

scoreboard players set #add switch.data 0
execute at @e[type=marker,tag=switch.checkpoint,predicate=switch:has_same_checkpoint,sort=nearest,limit=1] as @a[tag=!detached,tag=switch.process,sort=nearest] run function switch:modes/race/classement/increase

scoreboard players reset @a[tag=!detached,tag=switch.process] switch.temp
tag @a[tag=!detached,tag=switch.process] remove switch.process

