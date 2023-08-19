
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.gay_shooter.gay
tag @a remove switch.gay_shooter.shooter
team remove switch.temp.gays
team remove switch.temp.shooters

scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.shot_player

