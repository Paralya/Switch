
#> switch:modes/kart_racer/advancements/inventory_changed_confirm
#
# @within	switch:modes/kart_racer/give_items
#			switch:modes/kart_racer/advancements/inventory_changed
#

data modify storage switch:main Inventory set from entity @s Inventory

scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[0].components."minecraft:custom_data".switch.classic_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[1].components."minecraft:custom_data".switch.hard_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[2].components."minecraft:custom_data".switch.previous_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[3].components."minecraft:custom_data".switch.random_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[4].components."minecraft:custom_data".switch.next_model
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[5].components."minecraft:custom_data".switch.enable_collisions
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[6].components."minecraft:custom_data".switch.change_map
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[-1].components."minecraft:custom_data".switch.right_click_detect

execute if score #success switch.data matches 1 run clear @s
execute if score #success switch.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Classic Respawn","color":"yellow","italic":false}',custom_model_data=2013171,custom_data={switch:{classic_respawn:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Hard Respawn","color":"yellow","italic":false}',custom_model_data=2013170,custom_data={switch:{hard_respawn:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.3 with white_banner[custom_name='{"text":"Véhicule précédent","color":"yellow","italic":false}',banner_patterns=[{color:"black",pattern:"stripe_left"},{color:"black",pattern:"stripe_middle"},{color:"white",pattern:"stripe_top"},{color:"white",pattern:"stripe_bottom"},{color:"white",pattern:"curly_border"}],custom_data={switch:{previous_model:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.4 with player_head[custom_name='{"text":"Véhicule Aléatoire","color":"yellow","italic":false}',profile="MHF_Question",custom_data={switch:{random_model:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.5 with white_banner[custom_name='{"text":"Véhicule suivant","color":"yellow","italic":false}',banner_patterns=[{color:"black",pattern:"stripe_right"},{color:"black",pattern:"stripe_middle"},{color:"white",pattern:"stripe_top"},{color:"white",pattern:"stripe_bottom"},{color:"white",pattern:"curly_border"}],custom_data={switch:{next_model:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Voter pour activer les collisions joueurs","color":"yellow","italic":false}',custom_model_data=2012111,custom_data={switch:{enable_collisions:1b,vote:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Voter pour changer de map","color":"yellow","italic":false}',custom_model_data=2013219,custom_data={switch:{change_map:1b,vote:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Détection de click","color":"yellow","italic":false}',custom_model_data=2010003,custom_data={switch:{right_click_detect:1b}}]

