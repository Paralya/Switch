
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.alive
tag @a remove switch.looser

scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove like_compteur
scoreboard objectives remove nb_like
scoreboard objectives remove numero_vote
scoreboard objectives remove switch.temp.id 
scoreboard objectives remove passage_vote
scoreboard objectives remove switch.temp.rank
scoreboard objectives remove switch.temp.points 
scoreboard objectives remove switch.temp.rating_vote