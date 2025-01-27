
#> switch:translations/modes_fish_fight_second
#
# @within	switch:modes/fish_fight/second
#

# French
execute if score #fish_fight_seconds switch.data matches 3 if score #TEAM_FISH switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !\n","color":"white"}]
execute if score #temp switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus et gagner des coeurs !"},{"text":"\n"}]
execute if score #fish_fight_seconds switch.data matches 69 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 125 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !\n","color":"white"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"red"}

# English
execute if score #fish_fight_seconds switch.data matches 3 if score #TEAM_FISH switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 of 2 games)","italic":true,"color":"gray"},{"text":" The game will be played in ","color":"white"},{"text":"teams","underlined":true,"color":"white"},{"text":"!","color":"white"},{"text":" "}]
execute if score #temp switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"An Axolotl Bonus has appeared! Kill it to get a bonus and win hearts!"},{"text":"\n"}]
execute if score #fish_fight_seconds switch.data matches 69 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"TNTs were given to random players!\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 125 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"TNTs were given to random players!\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Disgruntled Fish invade!\n","color":"white"}]
execute if score #fish_fight_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Disgruntled Fish Invade!\n","color":"white"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"red"}

