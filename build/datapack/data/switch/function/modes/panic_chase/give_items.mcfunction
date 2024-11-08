
#> switch:modes/panic_chase/give_items
#
# @within	switch:modes/panic_chase/start
#

item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[unbreakable={},attribute_modifiers=[{type:"generic.movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"generic.attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
effect give @s[team=switch.temp.hunter] blindness infinite 0 true
effect give @s[team=switch.temp.hunter] darkness infinite 0 true
effect give @s[team=switch.temp.mouse] weakness infinite 255 true

