
data modify storage switch:main Inventory set from entity @s Inventory

scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[0].tag.switch.classic_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[1].tag.switch.hard_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[2].tag.switch.previous_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[3].tag.switch.random_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[4].tag.switch.next_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[5].tag.switch.enable_collisions
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[6].tag.switch.change_map
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[-1].tag.switch.right_click_detect

execute if score #success switch.data matches 1 run clear @s
execute if score #success switch.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick{CustomModelData:2013171,switch:{classic_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Classic Respawn","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{CustomModelData:2013170,switch:{hard_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Hard Respawn","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.3 with white_banner{switch:{previous_model:1b},BlockEntityTag:{Patterns:[{Pattern:"ls",Color:15},{Pattern:"ms",Color:15},{Pattern:"ts",Color:0},{Pattern:"bs",Color:0},{Pattern:"cbo",Color:0}]},display:{Name:'{"text":"Véhicule précédent","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.4 with player_head{switch:{random_model:1b},SkullOwner:"MHF_Question",display:{Name:'{"text":"Véhicule Aléatoire","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.5 with white_banner{switch:{next_model:1b},BlockEntityTag:{Patterns:[{Pattern:"rs",Color:15},{Pattern:"ms",Color:15},{Pattern:"ts",Color:0},{Pattern:"bs",Color:0},{Pattern:"cbo",Color:0}]},display:{Name:'{"text":"Véhicule suivant","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick{CustomModelData:2012111,switch:{enable_collisions:1b},Unbreakable:1b,display:{Name:'{"text":"Voter pour activer les collisions joueurs","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:2013219,switch:{change_map:1b},Unbreakable:1b,display:{Name:'{"text":"Voter pour changer de map","color":"yellow","italic":false}'}}
execute if score #success switch.data matches 1 run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,switch:{right_click_detect:1b},Unbreakable:1b,display:{Name:'{"text":"Détection de click","color":"yellow","italic":false}'}}

