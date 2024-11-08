
#> switch:modes/spectres_game/second
#
# @within	switch:modes/spectres_game/calls/second
#

scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=!detached,team=switch.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

## Message Si Spectror
## Bruit si Spectror
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.piglin.angry ambient @s

execute if score #spectres_game_seconds switch.data matches 30 as @a[tag=!detached,team=switch.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

## Message Si TASKS_GAME
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.tasks=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound block.anvil.use ambient @s

# Vagues d'obsidiennes
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players set #modulo switch.data 120
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players operation #temp switch.data = #spectres_game_seconds switch.data
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players operation #temp switch.data %= #modulo switch.data
execute if score #TASKS_GAME switch.data matches 1 if score #temp switch.data matches 40 run function switch:modes/spectres_game/task_obsidian
execute if score #TASKS_GAME switch.data matches 1 if score #temp switch.data matches 100 run function switch:modes/spectres_game/task_obsidian

# Slow regeneration
scoreboard players operation #temp switch.data = #spectres_game_seconds switch.data
scoreboard players operation #temp switch.data %= #10 switch.data
execute if score #temp switch.data matches 5 run effect give @a[tag=!detached,scores={switch.spectres_game.vi_slow_regen=1}] regeneration 1 2 true


# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true

function switch:translations/modes_spectres_game_second

