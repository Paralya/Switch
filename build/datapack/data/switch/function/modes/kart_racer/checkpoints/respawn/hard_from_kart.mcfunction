
#> switch:modes/kart_racer/checkpoints/respawn/hard_from_kart
#
# @within	switch:modes/kart_racer/checkpoints/respawn/hard
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

