
# Get which class got chosen
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.0 * run scoreboard players set @s switch.temp.chosen_class 1
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.1 * run scoreboard players set @s switch.temp.chosen_class 2
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.2 * run scoreboard players set @s switch.temp.chosen_class 3
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.3 * run scoreboard players set @s switch.temp.chosen_class 4
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.4 * run scoreboard players set @s switch.temp.chosen_class 5

