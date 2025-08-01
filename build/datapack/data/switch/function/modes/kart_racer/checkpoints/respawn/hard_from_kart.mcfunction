
#> switch:modes/kart_racer/checkpoints/respawn/hard_from_kart
#
# @executed	at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] & as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger]
#
# @within	switch:modes/kart_racer/checkpoints/respawn/hard [ at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] & as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] ]
#

tp @s ~ ~ ~ ~ ~
data modify entity @s Motion set value [0.d, 0.d, 0.d]
data modify entity @s Tags set value ["shopping_kart.kart"]
data modify entity @s Fire set value 0s
data modify entity @s Brain set value {memories:{}}
scoreboard players set @s shopping_kart.engine 0
scoreboard players set @s shopping_kart.booster_timer 0
scoreboard players set @s shopping_kart.reactor_boost 0
scoreboard players set @s shopping_kart.cruise_control 0
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s switch.temp.compteur
scoreboard players reset @s switch.effects.timer

