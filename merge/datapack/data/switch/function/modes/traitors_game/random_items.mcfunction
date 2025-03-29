
function switch:translations/modes_traitors_game_random_items

execute store result score #random switch.data run random value 0..46
execute if score #random switch.data matches 0 run give @s iron_ore 32
execute if score #random switch.data matches 1 run give @s gold_ore 32
execute if score #random switch.data matches 2 run give @s diamond_ore 3
execute if score #random switch.data matches 3 run give @s spyglass
execute if score #random switch.data matches 4 run give @s ender_pearl
execute if score #random switch.data matches 5 run give @s ender_pearl
execute if score #random switch.data matches 6 run give @s netherite_shovel[enchantments={efficiency:10},item_name={"text":"Teuse","color":"gold"},lore=[{"text":"C'est la pelle Teuse MDR !","color":"white","italic":false}]]
execute if score #random switch.data matches 7 run give @s golden_sword[damage=30,enchantments={knockback:10},item_name={"text":"Baseball Bat","color":"gold"},lore=[{"text":"Excitant n'est-ce pas ?","color":"white","italic":false}]]
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
execute if score #random switch.data matches 20 run give @s pufferfish_spawn_egg[item_name={"text":"Bubulle","color":"yellow"}] 8
execute if score #random switch.data matches 21 run give @s elytra[damage=415]
execute if score #random switch.data matches 22 run give @s spectral_arrow 32
execute if score #random switch.data matches 23 run give @s splash_potion[potion_contents="minecraft:long_slow_falling"]
execute if score #random switch.data matches 24 run give @s splash_potion[potion_contents="minecraft:strong_swiftness"]
execute if score #random switch.data matches 25 run give @s splash_potion[potion_contents="minecraft:strong_healing"]
execute if score #random switch.data matches 26 run give @s splash_potion[potion_contents="minecraft:strong_leaping"]
execute if score #random switch.data matches 27 run give @s enchanted_book[stored_enchantments={unbreaking:3}]
execute if score #random switch.data matches 28 run give @s enchanted_book[stored_enchantments={efficiency:5}]
execute if score #random switch.data matches 29 run give @s enchanted_book[stored_enchantments={protection:1}] 2
execute if score #random switch.data matches 30 run give @s enchanted_book[stored_enchantments={projectile_protection:2}]
execute if score #random switch.data matches 31 run give @s enchanted_book[stored_enchantments={blast_protection:2}]
execute if score #random switch.data matches 32 run give @s enchanted_book[stored_enchantments={fire_protection:2}]
execute if score #random switch.data matches 33 run give @s enchanted_book[stored_enchantments={thorns:1}]
execute if score #random switch.data matches 34 run give @s enchanted_book[stored_enchantments={depth_strider:3}]
execute if score #random switch.data matches 35 run give @s enchanted_book[stored_enchantments={feather_falling:4}]
execute if score #random switch.data matches 36 run give @s enchanted_book[stored_enchantments={sharpness:2}]
execute if score #random switch.data matches 37 run give @s enchanted_book[stored_enchantments={fire_aspect:1}]
execute if score #random switch.data matches 38 run give @s enchanted_book[stored_enchantments={knockback:2}]
execute if score #random switch.data matches 39 run give @s enchanted_book[stored_enchantments={fortune:3}]
execute if score #random switch.data matches 40 run give @s enchanted_book[stored_enchantments={power:2}]
execute if score #random switch.data matches 41 run give @s enchanted_book[stored_enchantments={flame:1}]
execute if score #random switch.data matches 42 run give @s enchanted_book[stored_enchantments={infinity:1}]
execute if score #random switch.data matches 43 run give @s enchanted_book[stored_enchantments={punch:2}]
execute if score #random switch.data matches 44 run give @s enchanted_book[stored_enchantments={mending:10}] 4
execute if score #random switch.data matches 45 run give @s enchanted_book[stored_enchantments={vanishing_curse:10}] 4
execute if score #random switch.data matches 46 run loot give @s loot switch:traitors_game/bomber_man

