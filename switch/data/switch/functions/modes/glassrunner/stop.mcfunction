
tp @e[type=creeper] 0 -10000 0
kill @e[type=arrow]
kill @e[type=creeper]
kill @e[type=item]
kill @e[type=experience_orb]

tag @a remove switch.alive

scoreboard objectives remove switch.glassrunner.deathCount
scoreboard objectives remove switch.glassrunner.use_snowball

team remove switch.glassrunner.blue
team remove switch.glassrunner.red
