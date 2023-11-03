
scoreboard players add #traitors_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #traitors_game_seconds switch.data matches 0.. run function switch:modes/traitors_game/xp_bar
execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]

execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..50] run effect give @s glowing 2 0 true

