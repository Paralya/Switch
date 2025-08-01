
#> switch:player/make_join
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/joined
#

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute if score #engine_state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/joined
execute unless score #engine_state switch.data matches 2..3 run function switch:player/trigger/detach/basic_stuff

