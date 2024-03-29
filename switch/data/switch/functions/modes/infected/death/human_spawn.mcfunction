
team join switch.temp.human @s
execute if data storage switch:main {map:"area_51"} run tp @s 1965 158 2035 -90 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128089 133 128095 180 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129013 105 129018 180 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127055 129 127046 -90 0
scoreboard players enable @s switch.temp.dont_want_to_be_infected
scoreboard players set @s switch.temp.hits_gotten 0
attribute @s generic.attack_speed base set 2048.0
effect clear @s
clear @s

# Give stuff depending on player's upgrades
execute unless score @s switch.infected.sword matches 1.. run item replace entity @s hotbar.0 with wooden_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.0,Operation:0,UUID:[I;26112014,1,1,1],Slot:"mainhand"}]}
execute if score @s switch.infected.sword matches 1 run item replace entity @s hotbar.0 with stone_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;26112014,1,1,1],Slot:"mainhand"}]}
execute if score @s switch.infected.sword matches 2 run item replace entity @s hotbar.0 with iron_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.0,Operation:0,UUID:[I;26112014,1,1,1],Slot:"mainhand"}]}
execute if score @s switch.infected.sword matches 3 run item replace entity @s hotbar.0 with diamond_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.5,Operation:0,UUID:[I;26112014,1,1,1],Slot:"mainhand"}]}
execute if score @s switch.infected.sword matches 4 run item replace entity @s hotbar.0 with netherite_sword{Unbreakable:1b,CustomModelData:2013118,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6.0,Operation:0,UUID:[I;26112014,1,1,1],Slot:"mainhand"}]}
execute unless score @s switch.infected.armor matches 1.. run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b		,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.5,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}]}
execute if score @s switch.infected.armor matches 1 run item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:1b			,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3.0,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}]}
execute if score @s switch.infected.armor matches 2 run item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b			,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3.5,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}]}
execute if score @s switch.infected.armor matches 3 run item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b				,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4.0,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}]}
execute if score @s switch.infected.armor matches 4 run item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b			,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4.5,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}]}
execute if score @s switch.infected.armor matches 5 run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b			,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0,Operation:0,UUID:[I;26112013,1,1,1],Slot:"chest"}],display:{color:546752},CustomModelData:2013115}

# Give the player an antidote potion
execute if score @s switch.infected.antidote matches 1.. run item replace entity @s hotbar.8 with potion{display:{Name:'{"text":"Antidote à usage unique","color":"green","italic":false}',Lore:['{"text":"Boire seulement lorsqu\'on se transforme","color":"gray","italic":false}']},CustomModelData:2013116,switch:{antidote:1b},HideFlags:32}

# Playsound
execute at @s run playsound entity.ender_dragon.growl ambient @s
effect give @s blindness 3 0 true
effect give @s regeneration 10 255 true

