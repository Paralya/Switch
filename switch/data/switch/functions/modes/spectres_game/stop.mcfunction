
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.spectres_game.visible
tag @a remove switch.spectres_game.spectre
tag @a remove switch.alive
team remove switch.temp.visible
team remove switch.temp.spectre

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.damages

