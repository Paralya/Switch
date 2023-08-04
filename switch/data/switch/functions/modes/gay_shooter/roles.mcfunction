
# Role selection (1/3 shooters)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run tp @s 114028 115 114013 0 0
execute if score #next_role switch.data matches 1 run team join switch.temp.shooters @s
execute if score #next_role switch.data matches 1 run tag @s add switch.gay_shooter.shooter
execute if score #next_role switch.data matches 2.. run team join switch.temp.gays @s
execute if score #next_role switch.data matches 2.. run tag @s add switch.gay_shooter.gay
execute if score #next_role switch.data matches 3.. run scoreboard players set #next_role switch.data 0

