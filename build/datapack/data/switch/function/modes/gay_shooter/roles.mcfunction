
#> switch:modes/gay_shooter/roles
#
# @within	(public)
#

# Role selection (1/4 shooters)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run tp @s 10034 124 -9981 0 0
execute if score #next_role switch.data matches 1 run team join switch.temp.shooters @s
execute if score #next_role switch.data matches 2.. run tp @s 10057 119 -9956 0 0
execute if score #next_role switch.data matches 2.. run team join switch.temp.gays @s
execute if score #next_role switch.data matches 4.. run scoreboard players set #next_role switch.data 0

