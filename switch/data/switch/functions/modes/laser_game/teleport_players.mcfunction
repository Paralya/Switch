
tag @s remove switch.laser_game.blue
tag @s remove switch.laser_game.red
tag @s remove global.ignore

attribute @s generic.attack_speed base set 1024
xp set @s 130 levels
xp set @s 1000 points

execute if score #team_boolean switch.data matches 0 in overworld run tp @s 549 101 501 45 0
execute if score #team_boolean switch.data matches 0 run team join switch.laser_game.blue @s
execute if score #team_boolean switch.data matches 0 run tag @s add switch.laser_game.blue
execute if score #team_boolean switch.data matches 1 in overworld run tp @s 501 101 549 -135 0
execute if score #team_boolean switch.data matches 1 run team join switch.laser_game.red @s
execute if score #team_boolean switch.data matches 1 run tag @s add switch.laser_game.red

scoreboard players add #team_boolean switch.data 1
scoreboard players operation #team_boolean switch.data %= #2 switch.data
