
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:1b}] run scoreboard players set @s switch.temp.choosen_class 1
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:3b}] run scoreboard players set @s switch.temp.choosen_class 2
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:5b}] run scoreboard players set @s switch.temp.choosen_class 3
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:7b}] run scoreboard players set @s switch.temp.choosen_class 4

execute if score @s switch.temp.choosen_class matches 1 run function switch:modes/rush_the_point/classes/guerrier
execute if score @s switch.temp.choosen_class matches 2 run function switch:modes/rush_the_point/classes/archer
execute if score @s switch.temp.choosen_class matches 3 run function switch:modes/rush_the_point/classes/kamikaze
execute if score @s switch.temp.choosen_class matches 4 run function switch:modes/rush_the_point/classes/builder

