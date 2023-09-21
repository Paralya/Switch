
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

execute as @a run attribute @s generic.max_health base set 20.0
execute as @a run attribute @s generic.max_health modifier remove 1-1-1-1-2
execute as @a run attribute @s generic.movement_speed modifier remove 1-1-1-1-1

team remove switch.temp.visible
team remove switch.temp.sidebar.5
team remove switch.temp.sidebar.4
team remove switch.temp.sidebar.3
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.1

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.role
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.sidebar

