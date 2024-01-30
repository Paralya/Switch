
## Maps spawn
# Map Plains Castles
execute if data storage switch:main {map:"ctf_plains_castles"} store result score #random switch.data run random value 0..1
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 0 run tp @s[team=switch.temp.red] 146325 129 146138 90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 1 run tp @s[team=switch.temp.red] 146322 129 146090 90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 0 run tp @s[team=switch.temp.blue] 146003 129 146138 -90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 1 run tp @s[team=switch.temp.blue] 146003 129 146090 -90 0


## Items to choose a class
tag @s remove switch.to_tp
clear @s
effect give @s resistance infinite 250 true
effect give @s jump_boost infinite 250 true
effect give @s slowness infinite 250 true
effect give @s blindness infinite 250 true
effect give @s night_vision infinite 250 true
effect give @s darkness infinite 250 true
gamemode survival @s
scoreboard players set @s switch.temp.choosen_class 0
item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,Unbreakable:1b}
item replace entity @s hotbar.1 with diamond_chestplate{switch:{class_item:1b},display:{Name:'{"text":"Tank","color":"red","italic":false}'}}
item replace entity @s hotbar.3 with diamond_sword{switch:{class_item:2b},display:{Name:'{"text":"Warrior","color":"red","italic":false}'}}
item replace entity @s hotbar.5 with crossbow{switch:{class_item:3b},display:{Name:'{"text":"Archer","color":"red","italic":false}'}}
item replace entity @s hotbar.7 with tnt{switch:{class_item:4b},display:{Name:'{"text":"Demolisher","color":"red","italic":false}'}}

