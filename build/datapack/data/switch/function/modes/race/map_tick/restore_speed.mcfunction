
#> switch:modes/race/map_tick/restore_speed
#
# @executed	as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}]
#
# @within	switch:modes/race/map_tick/airship_fortress_tp {count:42}
#			switch:modes/race/map_tick/clock_circuit_tp {count:48}
#			switch:modes/race/map_tick/dk_mountain_tp {count:82}
#			switch:modes/race/map_tick/plains_routine_tp {count:42}
#
# @args		count (int)
#

scoreboard players add @s switch.temp.compteur 1
$execute if score @s switch.temp.compteur matches $(count).. run scoreboard players operation @s shopping_kart.engine = @s switch.temp.old_speed
$scoreboard players reset @s[scores={switch.temp.compteur=$(count)..}] switch.temp.compteur

