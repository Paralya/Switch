
#> switch:modes/fish_fight/teams_tp/teams4
#
# @within	???
#

# Répartition en équipes
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 3 run team join switch.temp.green @s
execute if score #next_role switch.data matches 4 run team join switch.temp.yellow @s
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 0

