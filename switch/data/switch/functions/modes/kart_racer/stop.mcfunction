
execute at @e[tag=switch.checkpoint] run forceload remove ~ ~

kill @e[tag=shopping_kart.kart]
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.playing
tag @a remove switch.completed

scoreboard objectives remove switch.temp.dx
scoreboard objectives remove switch.temp.dy
scoreboard objectives remove switch.temp.dz
scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.change_map
scoreboard objectives remove switch.temp.checkpoint
scoreboard objectives remove switch.temp.classement
scoreboard objectives remove switch.respawn_cp_id
scoreboard objectives remove switch.hard_respawn_cp_id
scoreboard objectives remove switch.checkpoint
scoreboard objectives remove switch.lap

team remove switch.temp.1
team remove switch.temp.2
team remove switch.temp.3
team remove switch.temp.4
team remove switch.temp.5
team remove switch.temp.6
team remove switch.temp.7
team remove switch.temp.8
team remove switch.temp.9
team remove switch.temp.10
team remove switch.temp.10+

data remove storage switch:main respawn_states

