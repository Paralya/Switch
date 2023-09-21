
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

execute as @a run attribute @s generic.max_health base set 20.0
execute as @a run attribute @s generic.max_health modifier remove 1-1-1-1-2
execute as @a run attribute @s generic.movement_speed modifier remove 1-1-1-1-1

tag @a remove switch.murder_uhc.detective
tag @a remove switch.murder_uhc.traitor
tag @a remove switch.murder_uhc.ninja
tag @a remove switch.murder_uhc.second_life
tag @a remove switch.murder_uhc.innocent
tag @a remove switch.murder_uhc.traitor
tag @a remove switch.murder_uhc.big_traitor
team remove switch.temp.visible
team remove switch.temp.sidebar.5
team remove switch.temp.sidebar.4
team remove switch.temp.sidebar.3
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.1

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.sidebar

