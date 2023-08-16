
execute as @e[tag=switch.build_battle_marker] at @s run function switch:modes/build_battle/kill_marker

kill @e[type=!player]
kill @e[type=!player]

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.theme_vote
scoreboard objectives remove switch.temp.rating_vote
scoreboard objectives remove switch.temp.points

schedule clear switch:modes/build_battle/rating_time/find_player

