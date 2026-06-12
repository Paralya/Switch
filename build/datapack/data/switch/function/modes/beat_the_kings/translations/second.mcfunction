
#> switch:modes/beat_the_kings/translations/second
#
# @within	switch:modes/beat_the_kings/second
#

# French
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceFR","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" Use your bow to drain players' health!"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.8","color":"dark_aqua"}

