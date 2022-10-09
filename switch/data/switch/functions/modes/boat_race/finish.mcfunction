tag @s add switch.boat_race.finished

scoreboard players operation #boat_race.player_time.minutes switch.data = #boat_race_seconds switch.data
scoreboard players operation #boat_race.player_time.minutes switch.data /= #60 switch.data
scoreboard players operation #boat_race.player_time.seconds switch.data = #boat_race_seconds switch.data
scoreboard players operation #boat_race.player_time.seconds_to_remove switch.data = #boat_race.player_time.minutes switch.data
scoreboard players operation #boat_race.player_time.seconds_to_remove switch.data *= #60 switch.data
scoreboard players operation #boat_race.player_time.seconds switch.data -= #boat_race.player_time.seconds_to_remove switch.data

tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" a fini la course, il a mis "},{"score":{"name":"#boat_race.player_time.minutes","objective":"switch.data"}},{"text":":"},{"score":{"name":"#boat_race.player_time.seconds","objective":"switch.data"}},{"text":" !"}]

gamemode spectator
kill @e[type=chest_boat,distance=..1.25]
