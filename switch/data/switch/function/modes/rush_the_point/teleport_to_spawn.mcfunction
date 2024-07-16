
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
item replace entity @s weapon.offhand with warped_fungus_on_a_stick[unbreakable={},custom_model_data=2010003]
item replace entity @s hotbar.0 with diamond_sword[custom_name='{"text":"Guerrier","color":"red","italic":false}',custom_model_data=2013118,custom_data={switch:{class_item:1b}}]
item replace entity @s hotbar.2 with bow[custom_name='{"text":"Archer","color":"red","italic":false}',custom_model_data=2013149,custom_data={switch:{class_item:2b}}]
item replace entity @s hotbar.4 with elytra[custom_name='{"text":"Kamikaze","color":"red","italic":false}',lore=['{"text":"Cooldown de 2 minutes","color":"gray","italic":false}'],custom_model_data=2013143,custom_data={switch:{class_item:3b}}]
item replace entity @s hotbar.6 with bricks[custom_name='{"text":"Builder","color":"red","italic":false}',custom_data={switch:{class_item:4b}}]
item replace entity @s hotbar.8 with tnt[custom_name='{"text":"Destroyer","color":"red","italic":false}',custom_data={switch:{class_item:5b}}]

