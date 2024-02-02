
clear @s
effect clear @s
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet{display:{color:16711680}}
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet{display:{color:255}}
item replace entity @s armor.chest with chainmail_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with chainmail_boots
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
item replace entity @s hotbar.2 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.3 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.4 with arrow 24
item replace entity @s hotbar.6 with potion{display:{Name:'{"text":"Suicide Potion","color":"dark_purple","italic":false}'},custom_potion_effects:[{id:"minecraft:wither",amplifier:10b,duration:-1}],CustomPotionColor:4391004}
item replace entity @s[team=switch.temp.red] hotbar.7 with red_wool 8
item replace entity @s[team=switch.temp.blue] hotbar.7 with blue_wool 8
item replace entity @s hotbar.8 with bread 21

attribute @s generic.movement_speed base set 0.11
attribute @s generic.attack_speed base set 2048
attribute @s generic.max_health base set 20

