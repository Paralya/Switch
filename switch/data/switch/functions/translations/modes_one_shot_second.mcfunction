
# French
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

# English
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true, "color":"#FAB7FA"},{"text":" \u2022","bold":true, "color":"gray"},{"text":"(1 of 2 games)","italic":true, "color":"gray"},{"text":" The game will be played in ","color":"white"},{"text":"teams","underlined":true, "color":"white"},{"text":"!","color":"white"},{"text":"}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true, "color":"#FAB7FA"},{"text":" \u2022","bold":true, "color":"gray"},{"text":"(1 of 2 games)","italic":true, "color":"gray"},{"text":" The game will be played in ","color":"white"},{"text":"teams","underlined":true, "color":"white"},{"text":"!","color":"white"},{"text":"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

