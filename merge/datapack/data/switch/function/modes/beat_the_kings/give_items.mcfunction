
# Starter kit
item replace entity @s[team=switch.temp.civil] armor.head with leather_helmet[enchantments={protection:5,unbreaking:4}]
item replace entity @s[team=switch.temp.civil] armor.chest with leather_chestplate[enchantments={fire_protection:4,unbreaking:4}]
item replace entity @s[team=switch.temp.civil] armor.legs with leather_leggings[enchantments={protection:4,unbreaking:4}]
item replace entity @s[team=switch.temp.civil] armor.feet with iron_boots[enchantments={protection:4,unbreaking:2,feather_falling:2}]
item replace entity @s[team=switch.temp.civil] hotbar.0 with wooden_sword[enchantments={sharpness:6,unbreaking:10}]
item replace entity @s[team=switch.temp.civil] hotbar.1 with bow
item replace entity @s[team=switch.temp.civil] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.civil] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.civil] hotbar.8 with golden_apple 5
item replace entity @s[team=switch.temp.civil] inventory.0 with arrow 16

item replace entity @s[team=switch.temp.king] armor.head with golden_helmet[enchantments={protection:5,unbreaking:3}]
item replace entity @s[team=switch.temp.king] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.king] hotbar.1 with golden_sword[enchantments={unbreaking:3,sharpness:2}]
item replace entity @s[team=switch.temp.king] hotbar.3 with bow[enchantments={flame:1,punch:1}]
item replace entity @s[team=switch.temp.king] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 45
effect give @s[team=switch.temp.king] resistance infinite 3 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true

attribute @s generic.attack_speed base set 1024

