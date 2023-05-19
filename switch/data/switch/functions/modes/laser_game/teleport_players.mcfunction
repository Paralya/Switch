
tag @s remove switch.laser_game.blue
tag @s remove switch.laser_game.red
tag @s remove global.ignore

gamemode adventure @a[gamemode=survival]
effect give @s saturation infinite 255 true
effect give @s regeneration 5 255 true
effect give @s weakness infinite 255 true
attribute @s generic.attack_speed base set 1024
xp set @s 130 levels
xp set @s 1000 points

execute if score #team_boolean switch.data matches 0 if data storage switch:main {map:"laser_game"} in overworld run tp @s 549 101 501 45 0
execute if score #team_boolean switch.data matches 0 if data storage switch:main {map:"operation_pigclaw"} in overworld run tp @s 36117 123 35926 45 0
execute if score #team_boolean switch.data matches 0 run team join switch.laser_game.blue @s
execute if score #team_boolean switch.data matches 0 run tag @s add switch.laser_game.blue
execute if score #team_boolean switch.data matches 1 if data storage switch:main {map:"laser_game"} in overworld run tp @s 501 101 549 -135 0
execute if score #team_boolean switch.data matches 1 if data storage switch:main {map:"operation_pigclaw"} in overworld run tp @s 35934 108 36074 -135 0
execute if score #team_boolean switch.data matches 1 run team join switch.laser_game.red @s
execute if score #team_boolean switch.data matches 1 run tag @s add switch.laser_game.red

scoreboard players add #team_boolean switch.data 1
scoreboard players operation #team_boolean switch.data %= #2 switch.data

