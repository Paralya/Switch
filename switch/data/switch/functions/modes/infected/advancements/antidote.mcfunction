
advancement revoke @s only switch:infected/antidote
execute if data storage switch:main {current_game:"infected"} run effect clear @s[team=switch.temp.human]
execute if data storage switch:main {current_game:"infected"} run clear @s glass_bottle
execute if data storage switch:main {current_game:"infected"} run scoreboard players reset @s[team=switch.temp.human] switch.temp.infection

