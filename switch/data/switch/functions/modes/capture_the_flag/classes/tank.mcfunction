
clear @s
effect clear @s
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet{display:{color:16711680}}
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet{display:{color:255}}
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.2 with golden_apple 2
item replace entity @s hotbar.7 with bricks 3
item replace entity @s hotbar.8 with bread 21

attribute @s generic.movement_speed base set 0.09
attribute @s generic.attack_speed base set 2048
attribute @s generic.max_health base set 24
