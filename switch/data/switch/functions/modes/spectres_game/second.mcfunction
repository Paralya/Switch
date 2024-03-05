
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
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" 1 partie sur 3 ! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" TasksGame","bold":true,"color":"green"},{"text":" ! Les visibles et les spectres pourront effectuer des tâches en détruisant les blocs d'obsidiennes qui apparaîtront. Elles apporteront des bonus essentiels pour leur équipe.","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[tag=!detached] title {"text":"Tasks Game","color":"green"}
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[tag=!detached] subtitle {"text":"Pour les Visibles et Spectres","color":"light_purple"}
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

title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

