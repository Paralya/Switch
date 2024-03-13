
# French
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" 1 partie sur 5 ! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" SpectrorGame","bold":true,"color":"light_purple"},{"text":" ! Il y'a donc un traitre parmi l'équipe des invisibles.. Il devra faire son possible pour gagner seul. Attention, si tous les visibles meurent la victoire est donnée aux spectres, il doit donc attaquer rapidement !","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"Spectror Game","color":"light_purple"}
execute if score #spectres_game_seconds switch.data matches 6 run tellraw @a[scores={switch.lang=0,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" SpectrorsGame ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" Tu es un Spectror !\nTu dois gagner seul. Pour ce faire, il faudra que tu veilles à trahir au bon moment tes compères spectres.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.spectre] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" 1 partie sur 3 ! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" TasksGame","bold":true,"color":"green"},{"text":" ! Les visibles et les spectres pourront effectuer des tâches en détruisant les blocs d'obsidiennes qui apparaîtront. Elles apporteront des bonus essentiels pour leur équipe.","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"Tasks Game","color":"green"}
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] subtitle {"text":"Pour les Visibles et Spectres","color":"light_purple"}
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":"1 game out of 5! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" The game is a","color":"#F8DBF8"},{"text":" SpectrorGame","bold":true,"color":"light_purple"},{"text":"! So there's a traitor on the invisible team... He'll have to do his best to win alone. Be careful, if all the visible ones die, victory is given to the spectres, so he must attack quickly!","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"Spectror Game","color":"light_purple"}
execute if score #spectres_game_seconds switch.data matches 6 run tellraw @a[scores={switch.lang=1,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":"SpectrorsGame","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":"You're a Spectror!\nYou must win alone. To do so, you'll need to betray your fellow spectres at the right moment.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.spectre] ["",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" Use your bow to drain players' lives!"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":"1 game out of 3! ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" The game is a","color":"#F8DBF8"},{"text":" TasksGame","bold":true,"color":"green"},{"text":"! Visible and spectral creatures can perform tasks by destroying the obsidian blocks that appear. These will bring essential bonuses for their team.","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"Tasks Game","color":"green"}
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] subtitle {"text":"Pour les Visibles et Spectres","color":"light_purple"}
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.8","color":"dark_aqua"}

