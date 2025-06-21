
#> switch:modes/capture_the_flag/classes/chemister
#
# @within	switch:modes/capture_the_flag/classes/main
#

clear @s
effect clear @s
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[dyed_color=16711680]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[dyed_color=255]
item replace entity @s armor.chest with golden_chestplate
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with golden_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.2 with lingering_potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.3 with lingering_potion[potion_contents="minecraft:long_swiftness"]
item replace entity @s hotbar.4 with lingering_potion[potion_contents="minecraft:strong_harming"]
item replace entity @s hotbar.5 with lingering_potion[potion_contents="minecraft:strong_poison"]
item replace entity @s hotbar.6 with potion[item_name={"text":"Suicide Potion","color":"dark_purple"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}]
item replace entity @s[team=switch.temp.red] hotbar.7 with red_wool 8
item replace entity @s[team=switch.temp.blue] hotbar.7 with blue_wool 8
item replace entity @s hotbar.8 with bread 21

attribute @s movement_speed base set 0.10
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset

