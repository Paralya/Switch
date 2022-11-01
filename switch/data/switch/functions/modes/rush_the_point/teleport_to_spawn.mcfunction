
##Maps spawn
#Map Rush The Point 1
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.red] run tp @s 13930 100.69 14000 -90 0
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.blue] run tp @s 14070 100.69 14000 90 0



##Items to choose a class
tag @s remove switch.to_tp
clear @s
scoreboard players set @s switch.temp.choosen_class 0
item replace entity @s hotbar.2 with diamond_sword{switch:{class_item:1b},CustomModelData:2013118,display:{Name:'{"text":"Guerrier","color":"red","italic":false}'}}
item replace entity @s hotbar.4 with bow{switch:{class_item:1b},CustomModelData:2013149,display:{Name:'{"text":"Archer","color":"red","italic":false}'}}
item replace entity @s hotbar.6 with elytra{switch:{class_item:1b},CustomModelData:2013143,display:{Name:'{"text":"Kamikaze","color":"red","italic":false}'}}

