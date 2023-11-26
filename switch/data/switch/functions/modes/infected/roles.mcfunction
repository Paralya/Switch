
# Role selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.human_king @s
execute if score #next_role switch.data matches 2 run team join switch.temp.zombie_king @s
execute if score #next_role switch.data matches 3 run team join switch.temp.human @s
execute if score #next_role switch.data matches 4 run team join switch.temp.zombie @s
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 2

