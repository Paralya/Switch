
kill @e[type=!player]
kill @e[type=!player]

execute at @e[tag=switch.build_battle_marker] run forceload remove ~ ~ ~48 ~48

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.theme_vote
scoreboard objectives remove switch.temp.points

