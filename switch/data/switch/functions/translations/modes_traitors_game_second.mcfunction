
# French
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.lang=1,switch.temp.role=1}] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" This is the identity of a traitor:"},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":"!"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=1,switch.temp.role=1}] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" This is the identity of a traitor:"},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":"!"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention: PVP 1.8","color":"dark_aqua"}

