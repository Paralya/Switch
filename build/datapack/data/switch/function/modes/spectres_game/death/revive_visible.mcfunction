
#> switch:modes/spectres_game/death/revive_visible
#
# @within	switch:modes/spectres_game/obsidian_effect
#

scoreboard players set #next_role switch.data 1
function switch:modes/spectres_game/roles/main

item replace entity @s armor.head with diamond_helmet[enchantments={protection:3}]
item replace entity @s armor.chest with chainmail_chestplate[enchantments={fire_protection:2}]
item replace entity @s armor.legs with chainmail_leggings[enchantments={protection:3}]
item replace entity @s armor.feet with chainmail_boots[enchantments={fire_protection:2}]
item replace entity @s hotbar.0 with stone_sword[enchantments={sharpness:1}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.3 with oak_planks 64
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 3
item replace entity @s inventory.0 with arrow 12
give @s iron_pickaxe[enchantments={efficiency:2}]

scoreboard players set @s switch.alive 1
function switch:maps/spread_one_player
gamemode survival @s

