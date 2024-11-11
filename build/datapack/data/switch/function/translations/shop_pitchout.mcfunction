
#> switch:translations/shop_pitchout
#
# @within	switch:shop/pitchout
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"[Boutique Pitchout]","color":"yellow"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=0}] [{"text":"Votre achat pour les bottes en cuir a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous n'avez pas assez d'argent pour améliorer vos bottes en cuir !","color":"red"}]
execute if score @s switch.pitchout.boots matches 0 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "","color": "yellow"},{"text": "✮✮✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "Rien -> Bottes en cuir avec 20 de durabilité\n","color": "green"},{"text": "Acheter pour 50 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 1 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮","color": "yellow"},{"text": "✮✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "20 -> 30 de durabilité\n","color": "green"},{"text": "Acheter pour 100 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 2 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮","color": "yellow"},{"text": "✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "30 -> 40 de durabilité\n","color": "green"},{"text": "Acheter pour 150 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 3 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮","color": "yellow"},{"text": "✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "40 -> 50 de durabilité\n","color": "green"},{"text": "Acheter pour 200 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 4 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮✮","color": "yellow"},{"text": "✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "50 -> 65 de durabilité\n","color": "green"},{"text": "Acheter pour 250 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 5 run tellraw @s[scores={switch.lang=0}] [{"text": "Bottes en cuir","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮✮✮","color": "yellow"},{"text": " [+]","color": "gray"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=0}] [{"text":"Votre achat pour augmenter votre nombre d'ender pearls a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous n'avez pas assez d'argent pour augmenter votre nombre d'ender pearls !","color":"red"}]
execute if score @s switch.pitchout.ender_pearl matches 0 run tellraw @s[scores={switch.lang=0}] [{"text": "Perles de l'end","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "","color": "yellow"},{"text": "✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 102"},"hoverEvent": {"action": "show_text","contents": [{"text": "3 -> 4 ender pearls\n","color": "green"},{"text": "Acheter pour 80 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 1 run tellraw @s[scores={switch.lang=0}] [{"text": "Perles de l'end","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮","color": "yellow"},{"text": "✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 102"},"hoverEvent": {"action": "show_text","contents": [{"text": "4 -> 5 ender pearls\n","color": "green"},{"text": "Acheter pour 160 Saphirs","color": "yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 2 run tellraw @s[scores={switch.lang=0}] [{"text": "Perles de l'end","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮","color": "yellow"},{"text": " [+]","color": "gray"}]
# English
tellraw @s[scores={switch.lang=1}] [{"text":"[Pitchout Shop]","color":"yellow"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=1}] [{"text":"Your purchase for leather boots has been completed!","color":"green"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=1}] [{"text":"You don't have enough money to upgrade your leather boots!","color":"red"}]
execute if score @s switch.pitchout.boots matches 0 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "","color": "yellow"},{"text": "✮✮✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "Nothing -> Leather boots with 20 durability\n","color": "green"},{"text": "Buy for 50 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 1 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮","color": "yellow"},{"text": "✮✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "20 -> 30 durability\n","color": "green"},{"text": "Buy for 100 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 2 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮","color": "yellow"},{"text": "✮✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "30 -> 40 durability\n","color": "green"},{"text": "Buy for 150 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 3 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮","color": "yellow"},{"text": "✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "40 -> 50 durability\n","color": "green"},{"text": "Buy for 200 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 4 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮✮","color": "yellow"},{"text": "✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 101"},"hoverEvent": {"action": "show_text","contents": [{"text": "50 -> 65 durability\n","color": "green"},{"text": "Buy for 250 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.boots matches 5 run tellraw @s[scores={switch.lang=1}] [{"text": "Leather boots","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮✮✮✮","color": "yellow"},{"text": " [+]","color": "gray"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=1}] [{"text":"Your purchase for increasing your ender pearls amount has been completed!","color":"green"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=1}] [{"text":"You don't have enough money to increase your ender pearls amount!","color":"red"}]
execute if score @s switch.pitchout.ender_pearl matches 0 run tellraw @s[scores={switch.lang=1}] [{"text": "Ender pearls","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "","color": "yellow"},{"text": "✮✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 102"},"hoverEvent": {"action": "show_text","contents": [{"text": "3 -> 4 ender pearls\n","color": "green"},{"text": "Buy for 80 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 1 run tellraw @s[scores={switch.lang=1}] [{"text": "Ender pearls","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮","color": "yellow"},{"text": "✮","color": "gray"},{"text": " [+]","color": "green","clickEvent": {"action": "run_command","value": "/trigger switch.trigger.shop set 102"},"hoverEvent": {"action": "show_text","contents": [{"text": "4 -> 5 ender pearls\n","color": "green"},{"text": "Buy for 160 Sapphires","color": "yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 2 run tellraw @s[scores={switch.lang=1}] [{"text": "Ender pearls","color": "aqua"},{"text": " | ","bold": true,"color": "dark_gray"},{"text": "✮✮","color": "yellow"},{"text": " [+]","color": "gray"}]

