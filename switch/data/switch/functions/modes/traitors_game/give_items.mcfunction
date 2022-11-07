
#Starter kit
item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:projectile_protection",lvl:3s}]}
item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:3s}]}
item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:3s}]}
item replace entity @s armor.feet with diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s hotbar.0 with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s[tag=switch.traitors_game.detective] hotbar.1 with bow{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.16,Name:"generic.movement_speed",UUID:[I;-122107,15380,185414,-30760]}],Enchantments:[{id:power,lvl:2}]}
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.4 with golden_apple 6
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with apple 16
item replace entity @s hotbar.9 with cooked_chicken 28
loot give @s loot switch:traitors_game/all_starter
give @s oak_planks 100
give @s anvil


#Random start bonus items
execute if predicate switch:chance/0.05 run give @s iron_ore 32
execute if predicate switch:chance/0.05 run give @s gold_ore 32
execute if predicate switch:chance/0.05 run give @s diamond_ore 3
execute if predicate switch:chance/0.05 run give @s spyglass
execute if predicate switch:chance/0.05 run give @s ender_pearl
execute if predicate switch:chance/0.05 run give @s netherite_shovel{Enchantments:[{id:"minecraft:efficiency",lvl:10s}],display:{Name:'{"text":"Teuse","color":"gold","italic":false}',Lore:['{"text":"C\'est la pelle Teuse MDR !","color":"white","italic":false}']}}
execute if predicate switch:chance/0.05 run give @s golden_sword{Enchantments:[{id:"minecraft:knockback",lvl:10s}],display:{Name:'{"text":"Baseball Bat","color":"gold","italic":false}',Lore:['{"text":"Excitant n\'est-ce pas ?","color":"white","italic":false}']},Damage:30}
execute if predicate switch:chance/0.05 run give @s golden_apple 6
execute if predicate switch:chance/0.05 run give @s diamond 4
execute if predicate switch:chance/0.05 run give @s trident
execute if predicate switch:chance/0.05 run give @s fishing_rod
execute if predicate switch:chance/0.05 run give @s creeper_spawn_egg 4
execute if predicate switch:chance/0.05 run give @s zombie_spawn_egg 4
execute if predicate switch:chance/0.05 run give @s skeleton_spawn_egg 4
execute if predicate switch:chance/0.05 run give @s polar_bear_spawn_egg 2
execute if predicate switch:chance/0.05 run give @s blaze_spawn_egg 2
execute if predicate switch:chance/0.05 run give @s cave_spider_spawn_egg 1
execute if predicate switch:chance/0.05 run give @s fox_spawn_egg 8
execute if predicate switch:chance/0.05 run give @s frog_spawn_egg 8
execute if predicate switch:chance/0.05 run give @s ravager_spawn_egg 1
execute if predicate switch:chance/0.05 run give @s pufferfish_spawn_egg{display:{Name:'{"text":"Bubulle","color":"yellow","italic":false}'}} 8
execute if predicate switch:chance/0.05 run give @s zoglin_spawn_egg 4
execute if predicate switch:chance/0.05 run give @s elytra{Damage:415}
execute if predicate switch:chance/0.05 run give @s spectral_arrow 32
execute if predicate switch:chance/0.05 run give @s tipped_arrow{Potion:"minecraft:poison"} 8
execute if predicate switch:chance/0.05 run give @s tipped_arrow{Potion:"minecraft:leaping"} 8
execute if predicate switch:chance/0.05 run give @s tipped_arrow{Potion:"minecraft:weakness"} 8
execute if predicate switch:chance/0.05 run give @s tipped_arrow{Potion:"minecraft:slowness"} 8
execute if predicate switch:chance/0.05 run give @s tipped_arrow{Potion:"minecraft:harming"} 1
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:long_slow_falling"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:strong_swiftness"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:strength"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:fire_resistance"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:strong_leaping"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:weakness"}
execute if predicate switch:chance/0.05 run give @s splash_potion{Potion:"minecraft:strong_healing"}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:3s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:efficiency",lvl:5s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:1s}]} 2
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:blast_protection",lvl:4s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fire_protection",lvl:4s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:thorns",lvl:2s}]} 2
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:depth_strider",lvl:3s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:feather_falling",lvl:4s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:sharpness",lvl:3s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:knockback",lvl:2s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:power",lvl:2s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:flame",lvl:1s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:punch",lvl:2s}]}
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:10s}]} 4
execute if predicate switch:chance/0.05 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:vanishing_curse",lvl:10s}]} 4
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/simplunium_ore_x8
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/deepslate_simplunium_ore_x8
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/ender_stardust_ore
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/stardust_essence_x4
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/wormhole_potion_x2
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/lucky_artifact_bag
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/item_magnet
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/stoup_egg
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/fireball_stick
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/storm_stick
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/bomber_man
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/banana_man
execute if predicate switch:chance/0.05 run loot give @s loot switch:traitors_game/netherite

scoreboard players set @s crazy_adventure.radiation 0

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points

