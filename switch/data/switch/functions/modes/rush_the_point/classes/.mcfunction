
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:2b}] run scoreboard players set @s switch.temp.choosen_class 1
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:4b}] run scoreboard players set @s switch.temp.choosen_class 2
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:6b}] run scoreboard players set @s switch.temp.choosen_class 3

execute if score @s switch.temp.choosen_class matches 1 run function switch:modes/rush_the_point/classes/guerrier
execute if score @s switch.temp.choosen_class matches 2 run function switch:modes/rush_the_point/classes/archer
execute if score @s switch.temp.choosen_class matches 3 run function switch:modes/rush_the_point/classes/kamikaze

