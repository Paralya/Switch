
#> switch:modes/kart_racer/vote_for_change_map
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/kart_racer/right_click
#

scoreboard players set @s switch.temp.change_map 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.change_map=1}]
execute store result score #votes_max switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1

function switch:translations/modes_kart_racer_vote_for_change_map

execute if score #votes switch.data >= #votes_max switch.data run function switch:modes/kart_racer/restart_game

