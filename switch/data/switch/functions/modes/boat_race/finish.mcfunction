
scoreboard players set @s switch.alive -1

scoreboard players operation #minutes switch.data = #boat_race_seconds switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #boat_race_seconds switch.data
scoreboard players operation #seconds_to_remove switch.data = #minutes switch.data
scoreboard players operation #seconds_to_remove switch.data *= #60 switch.data
scoreboard players operation #seconds switch.data -= #seconds_to_remove switch.data

tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s","color":"yellow"},{"text":" a fini la course, il a effectué un temps de "},{"score":{"name":"#minutes","objective":"switch.data"},"color":"aqua"},{"text":"m"},{"score":{"name":"#seconds","objective":"switch.data"},"color":"aqua"},{"text":"s !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

gamemode spectator @s
kill @e[type=chest_boat,distance=..1.25,sort=nearest,limit=1]

