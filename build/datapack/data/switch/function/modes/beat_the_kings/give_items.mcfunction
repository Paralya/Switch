
#> switch:modes/beat_the_kings/give_items
#
# @within	switch:modes/beat_the_kings/start
#

# Starter kit
item replace entity @s[team=switch.temp.civil] armor.head with iron_helmet
item replace entity @s[team=switch.temp.civil] armor.chest with diamond_chestplate
item replace entity @s[team=switch.temp.civil] armor.legs with chainmail_leggings
item replace entity @s[team=switch.temp.civil] armor.feet with iron_boots[enchantments={feather_falling:2}]
item replace entity @s[team=switch.temp.civil] weapon.offhand with oak_planks 64
item replace entity @s[team=switch.temp.civil] hotbar.0 with iron_sword[enchantments={sharpness:5}]
item replace entity @s[team=switch.temp.civil] hotbar.1 with bow
item replace entity @s[team=switch.temp.civil] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.civil] hotbar.8 with golden_apple 5
item replace entity @s[team=switch.temp.civil] inventory.0 with arrow 16

item replace entity @s[team=switch.temp.king] armor.head with golden_helmet[enchantments={protection:3,unbreaking:10}]
item replace entity @s[team=switch.temp.king] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.king] hotbar.1 with golden_sword[enchantments={unbreaking:3,sharpness:3}]
item replace entity @s[team=switch.temp.king] hotbar.3 with bow[enchantments={flame:1,punch:1}]
item replace entity @s[team=switch.temp.king] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 45
effect give @s[team=switch.temp.king] resistance infinite 3 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true

attribute @s attack_speed base set 1024

