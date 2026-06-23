
#> switch:modes/_common/death/global_effects
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/spectres_game/death/for_global
#			switch:modes/traitors_game/death/for_global
#

execute at @s run function switch:modes/_common/death/inventory_drop

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2

