
team join switch.temp.human @s
execute if data storage switch:main {map:"area_51"} run tp @s 1965 158 2035 -90 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128089 133 128095 180 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129013 105 129018 180 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127055 129 127046 -90 0
scoreboard players enable @s switch.temp.dont_want_to_be_infected
scoreboard players set @s switch.temp.hits_gotten 0
attribute @s attack_speed base set 2048.0
effect clear @s
clear @s

# Give stuff depending on player's upgrades
execute unless score @s switch.infected.sword matches 1.. run item replace entity @s hotbar.0 with wooden_sword[unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4.0,operation:"add_value"}]]
execute if score @s switch.infected.sword matches 1 run item replace entity @s hotbar.0 with stone_sword[unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4.5,operation:"add_value"}]]
execute if score @s switch.infected.sword matches 2 run item replace entity @s hotbar.0 with iron_sword[unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:5.0,operation:"add_value"}]]
execute if score @s switch.infected.sword matches 3 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:5.5,operation:"add_value"}]]
execute if score @s switch.infected.sword matches 4 run item replace entity @s hotbar.0 with netherite_sword[unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6.0,operation:"add_value"}],custom_model_data=2013118]
execute unless score @s switch.infected.armor matches 1.. run item replace entity @s armor.chest with leather_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:2.5,operation:"add_value"}]]
execute if score @s switch.infected.armor matches 1 run item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:3.0,operation:"add_value"}]]
execute if score @s switch.infected.armor matches 2 run item replace entity @s armor.chest with golden_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:3.5,operation:"add_value"}]]
execute if score @s switch.infected.armor matches 3 run item replace entity @s armor.chest with iron_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:4.0,operation:"add_value"}]]
execute if score @s switch.infected.armor matches 4 run item replace entity @s armor.chest with diamond_chestplate[unbreakable={},attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:4.5,operation:"add_value"}]]
execute if score @s switch.infected.armor matches 5 run item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=546752,attribute_modifiers=[{type:"armor",slot:"chest",id:"switch.armor",amount:5.0,operation:"add_value"}],custom_model_data=2013115]

# Give the player an antidote potion
execute if score @s switch.infected.antidote matches 1.. run item replace entity @s hotbar.8 with potion[custom_name='{"text":"Antidote [1 use]","color":"green","italic":false}',lore=['{"text":"To consume when turning into a zombie","color":"gray","italic":false}'],custom_model_data=2013116,hide_additional_tooltip={},custom_data={switch:{antidote:1b}}]

# Playsound
execute at @s run playsound entity.ender_dragon.growl ambient @s
effect give @s blindness 3 0 true
effect give @s regeneration 10 255 true

