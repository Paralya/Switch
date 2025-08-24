
#> switch:modes/infected/death/human_give
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/infected/death/human_spawn
#			switch:shop/infected
#

# Clear old shop items (if any)
clear @s *[custom_data~{switch:{}}]

# Give sword
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

# Give armor
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

