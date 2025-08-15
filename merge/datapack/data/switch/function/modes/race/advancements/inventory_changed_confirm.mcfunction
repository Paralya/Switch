
# Copy for faster nbt check
data modify storage switch:main Inventory set from entity @s Inventory
data modify storage switch:main equipment set from entity @s equipment

# If any item is missing, set #success to 1
scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[0].components."minecraft:custom_data".switch.classic_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[1].components."minecraft:custom_data".switch.hard_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[5].components."minecraft:custom_data".switch.change_map
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main equipment.offhand.components."minecraft:custom_data".switch.right_click_detect

# If any item is missing, clear and regive items
execute if score #success switch.data matches 1 run clear @s
execute if score #success switch.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Classic Respawn","color":"yellow"},item_model="switch:wormhole_potion",custom_data={switch:{classic_respawn:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Hard Respawn","color":"yellow"},item_model="switch:travel_staff",custom_data={switch:{hard_respawn:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s[scores={switch.lang=0}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Vote pour changer de map","color":"yellow"},item_model="switch:quarry_configurator",custom_data={switch:{change_map:1b,vote:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s[scores={switch.lang=1}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Vote to change map","color":"yellow"},item_model="switch:quarry_configurator",custom_data={switch:{change_map:1b,vote:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Détection de click","color":"yellow"},item_model="minecraft:air",custom_data={switch:{right_click_detect:1b}}]

