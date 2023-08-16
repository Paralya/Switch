
# Get new vote
scoreboard players set #new_vote switch.data 0
execute if score #new_vote switch.data matches 0 unless data entity @s Inventory[{Slot:20b}] run scoreboard players set #new_vote switch.data 1
execute if score #new_vote switch.data matches 0 unless data entity @s Inventory[{Slot:21b}] run scoreboard players set #new_vote switch.data 2
execute if score #new_vote switch.data matches 0 unless data entity @s Inventory[{Slot:22b}] run scoreboard players set #new_vote switch.data 3
execute if score #new_vote switch.data matches 0 unless data entity @s Inventory[{Slot:23b}] run scoreboard players set #new_vote switch.data 4
execute if score #new_vote switch.data matches 0 unless data entity @s Inventory[{Slot:24b}] run scoreboard players set #new_vote switch.data 5

# Remove one vote from the old vote
execute if score @s switch.temp.theme_vote matches 1 run scoreboard players remove #vote_theme_1 switch.data 1
execute if score @s switch.temp.theme_vote matches 2 run scoreboard players remove #vote_theme_2 switch.data 1
execute if score @s switch.temp.theme_vote matches 3 run scoreboard players remove #vote_theme_3 switch.data 1
execute if score @s switch.temp.theme_vote matches 4 run scoreboard players remove #vote_theme_4 switch.data 1
execute if score @s switch.temp.theme_vote matches 5 run scoreboard players remove #vote_theme_5 switch.data 1

# Increase the vote
execute if score #new_vote switch.data matches 1.. run scoreboard players operation @s switch.temp.theme_vote = #new_vote switch.data
execute if score @s switch.temp.theme_vote matches 1 run scoreboard players add #vote_theme_1 switch.data 1
execute if score @s switch.temp.theme_vote matches 2 run scoreboard players add #vote_theme_2 switch.data 1
execute if score @s switch.temp.theme_vote matches 3 run scoreboard players add #vote_theme_3 switch.data 1
execute if score @s switch.temp.theme_vote matches 4 run scoreboard players add #vote_theme_4 switch.data 1
execute if score @s switch.temp.theme_vote matches 5 run scoreboard players add #vote_theme_5 switch.data 1

# Clear to remove held item
clear @s

