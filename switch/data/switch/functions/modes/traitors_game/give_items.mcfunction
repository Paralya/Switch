
#Starter kit
item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s armor.feet with diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.4 with golden_apple 5
item replace entity @s hotbar.6 with arrow 32
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with carrot 42
loot give @s loot switch:traitors_game/all_starter
give @s oak_planks 128


#Random start bonus items
execute if predicate switch:chance/0.1 run give @s totem_of_undying
execute if predicate switch:chance/0.1 run give @s ender_pearl
execute if predicate switch:chance/0.1 run give @s golden_sword{Enchantments:[{id:"minecraft:knockback",lvl:10s}],display:{Name:'{"text":"Baseball Bat","color":"gold","italic":false}',Lore:['{"text":"Excitant n\'est-ce pas ?","color":"white","italic":false}']},Damage:31}
execute if predicate switch:chance/0.1 run give @s golden_apple 6
execute if predicate switch:chance/0.1 run give @s diamond 5
execute if predicate switch:chance/0.1 run give @s trident
execute if predicate switch:chance/0.1 run give @s fishing_rod
execute if predicate switch:chance/0.1 run give @s creeper_spawn_egg 4
execute if predicate switch:chance/0.1 run give @s zombie_spawn_egg 5
execute if predicate switch:chance/0.1 run give @s elytra{Damage:420}
execute if predicate switch:chance/0.1 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if predicate switch:chance/0.1 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:sharpness",lvl:3s}]}
execute if predicate switch:chance/0.1 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}
execute if predicate switch:chance/0.1 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}
execute if predicate switch:chance/0.1 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:efficiency",lvl:3s}]}
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/simplunium_ore_x8
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/deepslate_simplunium_ore_x8
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/ender_stardust_ore
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/stardust_essence_x9
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/wormhole_potion_x2
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/lucky_artifact_bag
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/item_magnet
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/stoup_egg
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/quarry_pack
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/fireball_stick
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/storm_stick
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/shield_stick
execute if predicate switch:chance/0.25 run loot give @s loot switch:traitors_game/bomber_man
execute if predicate switch:chance/0.1 run loot give @s loot switch:traitors_game/banana_man

scoreboard players set @s crazy_adventure.radiation 0

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points

