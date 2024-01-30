
# Get which class got chosen
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:1b}] run scoreboard players set @s switch.temp.choosen_class 1
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:3b}] run scoreboard players set @s switch.temp.choosen_class 2
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:5b}] run scoreboard players set @s switch.temp.choosen_class 3
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:7b}] run scoreboard players set @s switch.temp.choosen_class 4
execute if score @s switch.temp.choosen_class matches 0 if score @s switch.right_click matches 1.. if data entity @s SelectedItem.tag.switch.class_item store result score @s switch.temp.choosen_class run data get entity @s SelectedItem.tag.switch.class_item

# Switch case
execute if score @s switch.temp.choosen_class matches 1 run function switch:modes/capture_the_flag/classes/tank
execute if score @s switch.temp.choosen_class matches 2 run function switch:modes/capture_the_flag/classes/warrior
execute if score @s switch.temp.choosen_class matches 3 run function switch:modes/capture_the_flag/classes/archer
execute if score @s switch.temp.choosen_class matches 4 run function switch:modes/capture_the_flag/classes/demolisher

