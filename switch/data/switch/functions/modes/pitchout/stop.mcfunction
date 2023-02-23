
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.first_life
tag @a remove switch.second_life
tag @a remove switch.third_life

scoreboard objectives remove switch.temp.cooldown

