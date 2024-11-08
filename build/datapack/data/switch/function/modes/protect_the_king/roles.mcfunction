
#> switch:modes/protect_the_king/roles
#
# @within	switch:modes/protect_the_king/start
#

# Role selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red_king @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue_king @s
execute if score #next_role switch.data matches 3 run team join switch.temp.red @s
execute if score #next_role switch.data matches 4 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 2

