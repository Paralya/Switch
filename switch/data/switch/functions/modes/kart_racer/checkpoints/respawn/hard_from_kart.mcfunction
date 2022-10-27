
tp @s ~ ~ ~ ~ ~
data modify entity @s Motion set value [0.d, 0.d, 0.d]
data modify entity @s Tags set value ["shopping_kart.kart"]
scoreboard players set @s shopping_kart.engine 0
scoreboard players set @s shopping_kart.booster_timer 0
scoreboard players remove @s shopping_kart.old_pos_y 100000

