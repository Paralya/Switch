
#> switch:modes/laser_game/teleport_players
#
# @within	switch:modes/laser_game/joined
#			switch:modes/laser_game/start [ as @a[tag=!detached,sort=random] ]
#

tag @s remove global.ignore

gamemode adventure @s[tag=!detached,gamemode=!adventure]
effect give @s saturation infinite 255 true
effect give @s regeneration 5 255 true
effect give @s weakness infinite 255 true
xp set @s 130 levels
xp set @s 1000 points

execute if score #team_boolean switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run tp @s 550 110 502 45 0
execute if score #team_boolean switch.data matches 0 run team join switch.laser_game.blue @s
execute if score #team_boolean switch.data matches 0 run scoreboard players set @s switch.alive 10
execute if score #team_boolean switch.data matches 1 if data storage switch:main {map:"laser_game"} in switch:game run tp @s 502 110 550 -135 0
execute if score #team_boolean switch.data matches 1 run team join switch.laser_game.red @s
execute if score #team_boolean switch.data matches 1 run scoreboard players set @s switch.alive 11

scoreboard players add #team_boolean switch.data 1
scoreboard players operation #team_boolean switch.data %= #2 switch.data

