
# French
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}
execute if score #layers_4_teams_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Les murs d'obsidienne ne sont plus indestructibles !","color":"red"}

# English
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Time remaining: ","color":"gray"},{"score":{"name":"#mins","objective":"switch.data"},"color":"white"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"white"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.8","color":"dark_aqua"}
execute if score #layers_4_teams_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"The obsidian walls are no longer indestructible!","color":"red"}

