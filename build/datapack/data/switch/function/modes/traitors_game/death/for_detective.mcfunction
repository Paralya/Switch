
#> switch:modes/traitors_game/death/for_detective
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/traitors_game/death/process
#

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 if predicate switch:chance/0.5 run scoreboard players set #success switch.data 2

function switch:translations/modes_traitors_game_death_for_detective

