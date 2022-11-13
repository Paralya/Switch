
#Starter kit
clear @s
item replace entity @s[tag=switch.spectres_game.visible] armor.head with chainmail_helmet{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] armor.feet with diamond_boots{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] hotbar.0 with stone_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] hotbar.1 with bow
item replace entity @s[tag=switch.spectres_game.visible] hotbar.2 with stone_axe
item replace entity @s[tag=switch.spectres_game.visible] hotbar.3 with oak_planks 64
item replace entity @s[tag=switch.spectres_game.visible] hotbar.7 with water_bucket
item replace entity @s[tag=switch.spectres_game.visible] hotbar.8 with golden_apple 4
item replace entity @s[tag=switch.spectres_game.visible] inventory.0 with arrow 16

item replace entity @s[tag=switch.spectres_game.spectre] hotbar.0 with water_bucket
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.1 with stone_sword{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:fire_aspect",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.3 with bow{Enchantments:[{id:"minecraft:punch",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.7 with golden_apple 8
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.8 with oak_planks 64
item replace entity @s[tag=switch.spectres_game.spectre] inventory.0 with arrow 48
item replace entity @s[tag=switch.spectres_game.spectre] inventory.1 with stone_axe
effect give @s[tag=switch.spectres_game.spectre] invisibility 99999 255 true
effect give @s[tag=switch.spectres_game.spectre] resistance 99999 0 true
effect give @s[tag=switch.spectres_game.spectre] speed 99999 0 true

item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3

effect give @s resistance 10 255 true
attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points
