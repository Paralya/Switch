
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.beat_the_kings.civil
tag @a remove switch.beat_the_kings.king
tag @a remove switch.alive
team remove switch.temp.civil
team remove switch.temp.king

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.damages

