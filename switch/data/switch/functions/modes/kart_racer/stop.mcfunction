
execute at @e[tag=switch.checkpoint] run forceload remove ~ ~

tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.playing
tag @a remove switch.completed

scoreboard objectives remove switch.temp.dx
scoreboard objectives remove switch.temp.dy
scoreboard objectives remove switch.temp.dz
scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.respawn_cp_id
scoreboard objectives remove switch.temp.checkpoint
scoreboard objectives remove switch.checkpoint
scoreboard objectives remove switch.lap

data remove storage switch:main respawn_states

