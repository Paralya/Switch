
## Maps spawn
# Map Rush The Point 1
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.red] run tp @s 13930 100.69 14000 -90 0
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.blue] run tp @s 14070 100.69 14000 90 0


## Items to choose a class
tag @s remove switch.to_tp
clear @s
effect give @s resistance infinite 250 true
effect give @s jump_boost infinite 250 true
effect give @s slowness infinite 250 true
effect give @s blindness infinite 250 true
effect give @s night_vision infinite 250 true
effect give @s darkness infinite 250 true
gamemode adventure @s
scoreboard players set @s switch.temp.choosen_class 0
item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,Unbreakable:1b}
item replace entity @s hotbar.0 with diamond_sword{switch:{class_item:1b},CustomModelData:2013118,display:{Name:'{"text":"Guerrier","color":"red","italic":false}'}}
item replace entity @s hotbar.2 with bow{switch:{class_item:2b},CustomModelData:2013149,display:{Name:'{"text":"Archer","color":"red","italic":false}'}}
item replace entity @s hotbar.4 with elytra{switch:{class_item:3b},CustomModelData:2013143,display:{Name:'{"text":"Kamikaze","color":"red","italic":false}',Lore:['{"text":"Cooldown de 2 minutes","color":"gray","italic":false}']}}
item replace entity @s hotbar.6 with bricks{switch:{class_item:4b},display:{Name:'{"text":"Builder","color":"red","italic":false}'}}
item replace entity @s hotbar.8 with tnt{switch:{class_item:5b},display:{Name:'{"text":"Destroyer","color":"red","italic":false}'}}

