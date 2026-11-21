
#> switch:modes/fish_fight/translations/second
#
# @within	switch:modes/fish_fight/second
#

# French
execute if score #fish_fight_seconds switch.data matches 3 if score #TEAM_FISH switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 partie sur 2)","italic":true,"color":"#AEBBD0"},{"text":" Le jeu se déroulera en ","color":"#E4ECF7"},{"text":"équipes","underlined":true,"color":"#E4ECF7"},{"text":" !\n","color":"#E4ECF7"}]
execute if score #temp switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus et gagner des coeurs !"},{"text":"\n"}]
execute if score #fish_fight_seconds switch.data matches 69 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 125 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Des poissons mécontents envahissent le terrain !\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Des poissons mécontents envahissent le terrain !\n","color":"#E4ECF7"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps écoulé : ","color":"#AEBBD0"},{"score":{"name":"#mins","objective":"switch.data"},"color":"#E4ECF7"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"#E4ECF7"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"#FF3347"}

# English
execute if score #fish_fight_seconds switch.data matches 3 if score #TEAM_FISH switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 of 2 games)","italic":true,"color":"#AEBBD0"},{"text":" The game will be played in ","color":"#E4ECF7"},{"text":"teams","underlined":true,"color":"#E4ECF7"},{"text":"!","color":"#E4ECF7"},{"text":" "}]
execute if score #temp switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"An Axolotl Bonus has appeared! Kill it to get a bonus and win hearts!"},{"text":"\n"}]
execute if score #fish_fight_seconds switch.data matches 69 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"TNTs were given to random players!\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 125 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"TNTs were given to random players!\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Disgruntled Fish invade!\n","color":"#E4ECF7"}]
execute if score #fish_fight_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"Disgruntled Fish Invade!\n","color":"#E4ECF7"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Elapsed time: ","color":"#AEBBD0"},{"score":{"name":"#mins","objective":"switch.data"},"color":"#E4ECF7"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"#E4ECF7"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"#FF3347"}

