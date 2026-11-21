
#> switch:modes/one_shot/translations/second
#
# @within	switch:modes/one_shot/second
#

# French
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 partie sur 2)","italic":true,"color":"#AEBBD0"},{"text":" Le jeu se déroulera en ","color":"#E4ECF7"},{"text":"équipes","underlined":true,"color":"#E4ECF7"},{"text":" !\n","color":"#E4ECF7"}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 partie sur 2)","italic":true,"color":"#AEBBD0"},{"text":" Le jeu se déroulera en ","color":"#E4ECF7"},{"text":"équipes","underlined":true,"color":"#E4ECF7"},{"text":" !\n","color":"#E4ECF7"}]

# English
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 of 2 games)","italic":true,"color":"#AEBBD0"},{"text":" The game will be played in ","color":"#E4ECF7"},{"text":"teams","underlined":true,"color":"#E4ECF7"},{"text":"!\n","color":"#E4ECF7"}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"#AEBBD0"},{"text":"(1 of 2 games)","italic":true,"color":"#AEBBD0"},{"text":" The game will be played in ","color":"#E4ECF7"},{"text":"teams","underlined":true,"color":"#E4ECF7"},{"text":"!\n","color":"#E4ECF7"}]
function switch:translations/common/basic_actionbar

