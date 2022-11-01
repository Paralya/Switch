
#Starter kit
item replace entity @s[tag=switch.spectres_game.visible] armor.head with iron_helmet
item replace entity @s[tag=switch.spectres_game.visible] armor.chest with diamond_chestplate
item replace entity @s[tag=switch.spectres_game.visible] armor.legs with iron_leggings
item replace entity @s[tag=switch.spectres_game.visible] armor.feet with diamond_boots
item replace entity @s[tag=switch.spectres_game.visible] hotbar.0 with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.visible] hotbar.1 with bow
item replace entity @s[tag=switch.spectres_game.visible] hotbar.3 with stone_axe
item replace entity @s[tag=switch.spectres_game.visible] hotbar.6 with arrow 32
item replace entity @s[tag=switch.spectres_game.visible] hotbar.7 with water_bucket
item replace entity @s[tag=switch.spectres_game.visible] hotbar.8 with carrot 42

item replace entity @s[tag=switch.spectres_game.spectre] hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:fire_aspect",lvl:1s}]}
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.2 with bow
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.6 with arrow 2
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.7 with water_bucket
item replace entity @s[tag=switch.spectres_game.spectre] hotbar.8 with carrot 42
effect give @s[tag=switch.spectres_game.spectre] invisibility 99999 255 true
effect give @s[tag=switch.spectres_game.spectre] resistance 10 255 true

give @s potion{Potion:"minecraft:strong_healing"} 4
give @s oak_planks 128
give @s tnt 3
give @s flint_and_steel

attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

