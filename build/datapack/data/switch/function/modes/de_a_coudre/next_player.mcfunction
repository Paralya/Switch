
#> switch:modes/de_a_coudre/next_player
#
# @within	switch:modes/de_a_coudre/next_player
#			switch:modes/de_a_coudre/tick
#

execute if score #next switch.data >= #max switch.data run function switch:modes/de_a_coudre/new_round
scoreboard players add #next switch.data 1

scoreboard players set #success switch.data 0
execute as @a[tag=!detached] if score @s switch.temp.order = #next switch.data run function switch:modes/de_a_coudre/next_player_teleport
execute if score #success switch.data matches 0 if score #next switch.data < #max switch.data run function switch:modes/de_a_coudre/next_player

