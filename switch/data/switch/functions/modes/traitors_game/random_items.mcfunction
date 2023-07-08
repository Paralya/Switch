
tellraw @s {"text":"Item random reçu !","color":"dark_purple"}

scoreboard players set #modulo_rand switch.data 48
function switch:math/get_random/

execute if score #random switch.data matches 0 run give @s iron_ore 32
execute if score #random switch.data matches 1 run give @s gold_ore 32
execute if score #random switch.data matches 2 run give @s diamond_ore 3
execute if score #random switch.data matches 3 run give @s spyglass
execute if score #random switch.data matches 4 run give @s ender_pearl
execute if score #random switch.data matches 5 run give @s ender_pearl
execute if score #random switch.data matches 6 run give @s netherite_shovel{Enchantments:[{id:"minecraft:efficiency",lvl:10s}],display:{Name:'{"text":"Teuse","color":"gold","italic":false}',Lore:['{"text":"C\'est la pelle Teuse MDR !","color":"white","italic":false}']}}
execute if score #random switch.data matches 7 run give @s golden_sword{Enchantments:[{id:"minecraft:knockback",lvl:10s}],display:{Name:'{"text":"Baseball Bat","color":"gold","italic":false}',Lore:['{"text":"Excitant n\'est-ce pas ?","color":"white","italic":false}']},Damage:30}
execute if score #random switch.data matches 8 run give @s lava_bucket 2
execute if score #random switch.data matches 9 run give @s golden_apple 4
execute if score #random switch.data matches 10 run give @s golden_apple 2
execute if score #random switch.data matches 11 run give @s arrow 12
execute if score #random switch.data matches 12 run give @s arrow 20
execute if score #random switch.data matches 13 run give @s diamond 5
execute if score #random switch.data matches 14 run give @s trident
execute if score #random switch.data matches 15 run give @s creeper_spawn_egg 2
execute if score #random switch.data matches 16 run give @s polar_bear_spawn_egg 2
execute if score #random switch.data matches 17 run give @s zoglin_spawn_egg 2
execute if score #random switch.data matches 18 run give @s fox_spawn_egg 8
execute if score #random switch.data matches 19 run give @s frog_spawn_egg 8
execute if score #random switch.data matches 20 run give @s pufferfish_spawn_egg{display:{Name:'{"text":"Bubulle","color":"yellow","italic":false}'}} 8
execute if score #random switch.data matches 21 run give @s elytra{Damage:415}
execute if score #random switch.data matches 22 run give @s spectral_arrow 32
execute if score #random switch.data matches 23 run give @s splash_potion{Potion:"minecraft:long_slow_falling"}
execute if score #random switch.data matches 24 run give @s splash_potion{Potion:"minecraft:strong_swiftness"}
execute if score #random switch.data matches 25 run give @s splash_potion{Potion:"minecraft:strong_healing"}
execute if score #random switch.data matches 26 run give @s splash_potion{Potion:"minecraft:strong_leaping"}
execute if score #random switch.data matches 27 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:3s}]}
execute if score #random switch.data matches 28 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:efficiency",lvl:5s}]}
execute if score #random switch.data matches 29 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:1s}]} 2
execute if score #random switch.data matches 30 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:projectile_protection",lvl:2s}]}
execute if score #random switch.data matches 31 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:blast_protection",lvl:2s}]}
execute if score #random switch.data matches 32 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fire_protection",lvl:2s}]}
execute if score #random switch.data matches 33 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:thorns",lvl:1s}]}
execute if score #random switch.data matches 34 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:depth_strider",lvl:3s}]}
execute if score #random switch.data matches 35 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:feather_falling",lvl:4s}]}
execute if score #random switch.data matches 36 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:sharpness",lvl:2s}]}
execute if score #random switch.data matches 37 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}
execute if score #random switch.data matches 38 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:knockback",lvl:2s}]}
execute if score #random switch.data matches 39 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}
execute if score #random switch.data matches 40 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:power",lvl:2s}]}
execute if score #random switch.data matches 41 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:flame",lvl:1s}]}
execute if score #random switch.data matches 42 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}
execute if score #random switch.data matches 43 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:punch",lvl:2s}]}
execute if score #random switch.data matches 44 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:10s}]} 4
execute if score #random switch.data matches 45 run give @s enchanted_book{StoredEnchantments:[{id:"minecraft:vanishing_curse",lvl:10s}]} 4
execute if score #random switch.data matches 46 run loot give @s loot switch:traitors_game/bomber_man
execute if score #random switch.data matches 47 run loot give @s loot switch:traitors_game/banana_man

