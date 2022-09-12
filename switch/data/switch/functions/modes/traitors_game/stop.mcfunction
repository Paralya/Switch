
tp @e[type=creeper] 0 -10000 0
kill @e[type=arrow]
kill @e[type=creeper]
kill @e[type=item]
kill @e[type=experience_orb]

tag @a remove switch.alive
team remove switch.temp.detective

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.posX
scoreboard objectives remove switch.temp.posY
scoreboard objectives remove switch.temp.posZ
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount

