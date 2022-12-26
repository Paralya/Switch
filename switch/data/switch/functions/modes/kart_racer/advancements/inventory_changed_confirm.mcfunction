
data modify storage switch:main Inventory set from entity @s Inventory

scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[0].tag.switch.classic_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[1].tag.switch.hard_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[2].tag.switch.enable_collisions
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[3].tag.switch.change_map

execute if score #success switch.data matches 1 run clear @s
execute if score #success switch.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick{CustomModelData:2013171,switch:{classic_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Classic Respawn","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{CustomModelData:2013170,switch:{hard_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Hard Respawn","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick{CustomModelData:2012111,switch:{enable_collisions:1b},Unbreakable:1b,display:{Name:'{"text":"Voter pour activer les collisions joueurs","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:2013219,switch:{change_map:1b},Unbreakable:1b,display:{Name:'{"text":"Voter pour changer de map","color":"yellow","italic":false}'}}

