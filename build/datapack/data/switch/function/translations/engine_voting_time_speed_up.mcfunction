
#> switch:translations/engine_voting_time_speed_up
#
# @executed	in switch:game
#
# @within	switch:engine/voting_time/speed_up
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tous les joueurs ont voté, accélération du timer !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" All players have voted, speed up the timer!"}]

