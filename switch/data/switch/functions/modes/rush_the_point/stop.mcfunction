
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]
kill @e[type=!player]
tag @a remove switch.to_tp

team remove switch.rush_the_point.red
team remove switch.rush_the_point.blue

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.deathCount
scoreboard objectives remove switch.temp.choosen_class
scoreboard objectives remove switch.temp.break_obsidian
scoreboard objectives remove switch.temp.sidebar

team remove switch.temp.sidebar.5
team remove switch.temp.sidebar.4
team remove switch.temp.sidebar.3
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.1

