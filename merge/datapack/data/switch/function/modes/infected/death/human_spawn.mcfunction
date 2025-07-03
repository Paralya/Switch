
team join switch.temp.human @s
execute if data storage switch:main {map:"area_51"} run tp @s 2017 158 2098 -90 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128089 133 128095 180 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129013 105 129018 180 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127055 129 127046 -90 0
scoreboard players enable @s switch.temp.dont_want_to_be_infected
scoreboard players set @s switch.temp.hits_gotten 0
attribute @s attack_speed base set 2048.0
effect clear @s
clear @s

# Give stuff depending on player's upgrades
execute if score @s switch.infected.sword matches 0 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_0
execute if score @s switch.infected.sword matches 1 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_1
execute if score @s switch.infected.sword matches 2 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_2
execute if score @s switch.infected.sword matches 3 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_3
execute if score @s switch.infected.sword matches 4 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_4
execute if score @s switch.infected.sword matches 5 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_5
execute if score @s switch.infected.sword matches 6 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_6
execute if score @s switch.infected.sword matches 7 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_7
execute if score @s switch.infected.sword matches 8 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_8
execute if score @s switch.infected.sword matches 9 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_9
execute if score @s switch.infected.sword matches 10 run loot replace entity @s hotbar.0 loot switch:i/infected_sword_10
execute if score @s switch.infected.armor matches 0 run loot replace entity @s armor.chest loot switch:i/infected_armor_0
execute if score @s switch.infected.armor matches 1 run loot replace entity @s armor.chest loot switch:i/infected_armor_1
execute if score @s switch.infected.armor matches 2 run loot replace entity @s armor.chest loot switch:i/infected_armor_2
execute if score @s switch.infected.armor matches 3 run loot replace entity @s armor.chest loot switch:i/infected_armor_3
execute if score @s switch.infected.armor matches 4 run loot replace entity @s armor.chest loot switch:i/infected_armor_4
execute if score @s switch.infected.armor matches 5 run loot replace entity @s armor.chest loot switch:i/infected_armor_5
execute if score @s switch.infected.armor matches 6 run loot replace entity @s armor.chest loot switch:i/infected_armor_6
execute if score @s switch.infected.armor matches 7 run loot replace entity @s armor.chest loot switch:i/infected_armor_7
execute if score @s switch.infected.armor matches 8 run loot replace entity @s armor.chest loot switch:i/infected_armor_8
execute if score @s switch.infected.armor matches 9 run loot replace entity @s armor.chest loot switch:i/infected_armor_9
execute if score @s switch.infected.armor matches 10 run loot replace entity @s armor.chest loot switch:i/infected_armor_10


# Playsound
execute at @s run playsound entity.ender_dragon.growl ambient @s
effect give @s blindness 3 0 true
effect give @s regeneration 10 255 true

