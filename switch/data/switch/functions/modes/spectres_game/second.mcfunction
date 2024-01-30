
scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=!detached,team=switch.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

## Message Si Spectror
## Bruit si Spectror
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.piglin.angry ambient @s
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" 1 partie sur 5 ! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" SpectrorGame","bold":true,"color":"light_purple"},{"text":" ! Il y'a donc un traitre parmi l'équipe des invisibles.. Il devra faire son possible pour gagner seul. Attention, si tous les visibles meurent la victoire est donnée aux spectres, il doit donc attaquer rapidement !","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run title @a[tag=!detached] title {"text":"Spectror Game","color":"light_purple"}
execute if score #spectres_game_seconds switch.data matches 6 run tellraw @a[scores={switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" SpectrorsGame ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" Tu es un Spectror !\nTu dois gagner seul. Pour ce faire, il faudra que tu veilles à trahir au bon moment tes compères spectres.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]

execute if score #spectres_game_seconds switch.data matches 30 run tellraw @a[tag=!detached,team=switch.temp.spectre] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #spectres_game_seconds switch.data matches 30 as @a[tag=!detached,team=switch.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

## Message Si TASKS_GAME
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.tasks=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" 1 partie sur 3 ! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" TasksGame","bold":true,"color":"lime"},{"text":" ! Les visibles pourront effectuer des tâches en détruisant les blocs d'obsidiennes qui apparaîtront. Ils apporteront des bonus essentiels pour l'équipe.","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[tag=!detached] title {"text":"Tasks Game","color":"lime"}
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound block.anvil.use ambient @s

# Première vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 32 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 35 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 40 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 45 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 55 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 65 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
execute if score #spectres_game_seconds switch.data matches 60 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
# Première vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 200 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
# Première vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 390 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
# Première vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 590 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian
# Première vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 800 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian

# Deuxième vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 220 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian

# Troisième vague d'obsidiennes
execute if score #spectres_game_seconds switch.data matches 350 if score #TASKS_GAME switch.data matches 1 run function switch:modes/spectres_game/task_obsidian

# Alternance des scoreboard damage et kills
scoreboard players operation #temp switch.data = #spectres_game_seconds switch.data
scoreboard players operation #temp switch.data %= #20 switch.data
execute if score #temp switch.data matches 0 run scoreboard objectives setdisplay sidebar switch.temp.damages
execute if score #temp switch.data matches 10 run scoreboard objectives setdisplay sidebar switch.temp.kills


# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true

