
# French
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":"Use your bow to drain players' lives!"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Warning: PVP 1.8","color":"dark_aqua"}

