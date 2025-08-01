
#> switch:modes/capture_the_flag/classes/main
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/right_click
#			switch:modes/capture_the_flag/tick [ as @a[scores={switch.temp.chosen_class=0}] ]
#

# Get which class got chosen
execute if score @s switch.temp.chosen_class matches 0 unless data entity @s Inventory[{Slot:0b}] run scoreboard players set @s switch.temp.chosen_class 1
execute if score @s switch.temp.chosen_class matches 0 unless data entity @s Inventory[{Slot:2b}] run scoreboard players set @s switch.temp.chosen_class 2
execute if score @s switch.temp.chosen_class matches 0 unless data entity @s Inventory[{Slot:4b}] run scoreboard players set @s switch.temp.chosen_class 3
execute if score @s switch.temp.chosen_class matches 0 unless data entity @s Inventory[{Slot:6b}] run scoreboard players set @s switch.temp.chosen_class 4
execute if score @s switch.temp.chosen_class matches 0 unless data entity @s Inventory[{Slot:8b}] run scoreboard players set @s switch.temp.chosen_class 5

# Switch case
execute if score @s switch.temp.chosen_class matches 1 run function switch:modes/capture_the_flag/classes/tank
execute if score @s switch.temp.chosen_class matches 2 run function switch:modes/capture_the_flag/classes/warrior
execute if score @s switch.temp.chosen_class matches 3 run function switch:modes/capture_the_flag/classes/archer
execute if score @s switch.temp.chosen_class matches 4 run function switch:modes/capture_the_flag/classes/demolisher
execute if score @s switch.temp.chosen_class matches 5 run function switch:modes/capture_the_flag/classes/chemister
execute if score @s switch.temp.chosen_class matches 1..5 run effect give @s slow_falling 10 0 true

