
scoreboard players add #one_shot_seconds switch.data 1


execute if score #one_shot_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/one_shot/give_items
execute if score #one_shot_seconds switch.data matches 5 run give @a[tag=!detached] arrow 1
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]

scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
scoreboard players operation #temp switch.data %= #31 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] glowing 4 2 true

# only one winner en cas d'une team
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/one_shot/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/one_shot/teams_tp/only_one_winner

# PVP Warning
title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

