
clear @s
effect clear @s
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet{display:{color:16711680}}
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet{display:{color:255}}
item replace entity @s armor.chest with iron_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.2 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.4 with potion{display:{Name:'{"text":"Suicide Potion","color":"dark_purple","italic":false}'},custom_potion_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}],CustomPotionColor:4391004}
item replace entity @s[team=switch.temp.red] hotbar.5 with red_wool 8
item replace entity @s[team=switch.temp.blue] hotbar.5 with blue_wool 8
item replace entity @s hotbar.6 with flint_and_steel
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with bread 21

attribute @s generic.movement_speed base set 0.10
attribute @s generic.attack_speed base set 2048
attribute @s generic.max_health base set 20

