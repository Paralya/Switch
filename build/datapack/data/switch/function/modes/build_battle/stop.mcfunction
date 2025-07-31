
#> switch:modes/build_battle/stop
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/calls/stop [ in switch:build_battle ]
#

execute as @e[tag=switch.build_battle_marker] at @s run function switch:modes/build_battle/kill_marker

scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.theme_vote
scoreboard objectives remove switch.temp.rating_vote
scoreboard objectives remove switch.temp.points
scoreboard objectives remove switch.temp.to_rate

schedule clear switch:modes/build_battle/rating_time/find_player

