
execute at @e[tag=switch.checkpoint] run forceload remove ~ ~
execute at @e[tag=switch.effect_block] run forceload remove ~ ~

kill @e[tag=shopping_kart.kart]
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

scoreboard objectives remove switch.temp
scoreboard objectives remove switch.temp.old_speed
scoreboard objectives remove switch.temp.compteur
scoreboard objectives remove switch.temp.dx
scoreboard objectives remove switch.temp.dy
scoreboard objectives remove switch.temp.dz
scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.vote_collisions
scoreboard objectives remove switch.temp.change_map
scoreboard objectives remove switch.temp.checkpoint
scoreboard objectives remove switch.temp.classement
scoreboard objectives remove switch.temp.sidebar
scoreboard objectives remove switch.respawn_cp_id
scoreboard objectives remove switch.hard_respawn_cp_id
scoreboard objectives remove switch.checkpoint
scoreboard objectives remove switch.lap
scoreboard objectives remove switch.effects.last
scoreboard objectives remove switch.effects.timer

team remove switch.temp.kart
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

