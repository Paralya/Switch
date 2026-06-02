
#> switch:modes/capture_the_flag/classes/_soldier_base
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/demolisher
#			switch:modes/capture_the_flag/classes/warrior
#

item replace entity @s armor.chest with iron_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.2 with potion[potion_contents="minecraft:strong_healing"]

