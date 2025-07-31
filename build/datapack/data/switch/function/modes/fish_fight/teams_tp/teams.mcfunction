
#> switch:modes/fish_fight/teams_tp/teams
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/fish_fight/start [ as @a[tag=!detached,sort=random] ]
#

# Répartition en équipes
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

