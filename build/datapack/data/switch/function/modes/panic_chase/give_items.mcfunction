
#> switch:modes/panic_chase/give_items
#
# @within	switch:modes/panic_chase/start
#

# Item give depending on random
execute store result score #random switch.data run random value 1..6
execute if score #random switch.data matches 1 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:emerald_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 2 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:obsidian_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 3 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:topaz_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 4 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:ruby_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 5 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:sapphire_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 6 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:adamantium_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]

# Effect gives
effect give @s[team=switch.temp.hunter] blindness infinite 0 true
effect give @s[team=switch.temp.hunter] darkness infinite 0 true
effect give @s[team=switch.temp.mouse] weakness infinite 255 true

