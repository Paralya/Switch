
tp @e[type=creeper] 0 -10000 0
kill @e[type=arrow]
kill @e[type=creeper]
kill @e[type=item]
kill @e[type=experience_orb]
xp set @a 0 levels
xp set @a 0 points

tag @a remove switch.alive

scoreboard objectives remove switch.glassrunner.money
scoreboard objectives remove switch.glassrunner.deathCount
scoreboard objectives remove switch.glassrunner.use_snowball
scoreboard objectives remove switch.glassrunner.display

team remove switch.glassrunner.blue
team remove switch.glassrunner.red
team remove switch.glassrunner.p_red
team remove switch.glassrunner.p_blue

scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0