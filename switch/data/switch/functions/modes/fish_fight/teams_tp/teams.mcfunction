# répartition en équipes

tellraw @a ["",{"text":"Fish Fight","bold":true,"color":"#8DF0CE"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 3)","bold":true,"italic":true,"color":"gray"},{"text":" Le jeu se déroulera en équipe !","bold":true},{"text":"\n "}]

team add switch.temp.red
team add switch.temp.blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true

scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

