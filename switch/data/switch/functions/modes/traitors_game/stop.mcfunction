
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

execute as @a run attribute @s generic.max_health base set 20.0
execute as @a run attribute @s generic.max_health modifier remove 1-1-1-1-2
execute as @a run attribute @s generic.movement_speed modifier remove 1-1-1-1-1

tag @a remove switch.alive
team remove switch.temp.detective

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount

