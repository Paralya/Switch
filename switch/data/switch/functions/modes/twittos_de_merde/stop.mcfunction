
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.alive

scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove like_compteur
scoreboard objectives remove nb_like