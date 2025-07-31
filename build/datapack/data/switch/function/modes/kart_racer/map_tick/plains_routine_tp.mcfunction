
#> switch:modes/kart_racer/map_tick/plains_routine_tp
#
# @executed	at @s
#
# @within	switch:modes/kart_racer/map_tick/plains_routine [ at @s ]
#

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={switch.temp.compteur=1}] NoAI set value 1b
tp @s[scores={switch.temp.compteur=1}] 20151.0 ~.1 ~
tp @s[scores={switch.temp.compteur=2}] ~1.5 ~-.05 ~
tp @s[scores={switch.temp.compteur=3}] ~1.5 ~-.05 ~
tp @s[scores={switch.temp.compteur=4}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=5}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=6}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=7}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=8}] ~.5 ~1 ~
tp @s[scores={switch.temp.compteur=9}] ~.5 ~1 ~
tp @s[scores={switch.temp.compteur=10}] ~.5 ~1.5 ~
tp @s[scores={switch.temp.compteur=11}] ~.5 ~1.5 ~
tp @s[scores={switch.temp.compteur=12}] ~.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=13}] ~.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=14}] ~-.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=15}] ~-.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=16}] ~-.5 ~1.25 ~
tp @s[scores={switch.temp.compteur=17}] ~-.5 ~1.25 ~
tp @s[scores={switch.temp.compteur=18}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=19}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=20}] ~-1 ~.5 ~.5
tp @s[scores={switch.temp.compteur=21}] ~-1 ~.5 ~.5
tp @s[scores={switch.temp.compteur=22}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=23}] ~-1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=24}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=25}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=26}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=27}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=28}] ~-1 ~-1.25 ~
tp @s[scores={switch.temp.compteur=29}] ~-1 ~-1.25 ~
tp @s[scores={switch.temp.compteur=30}] ~-1 ~-1.5 ~.5
tp @s[scores={switch.temp.compteur=31}] ~-1 ~-1.5 ~.5
tp @s[scores={switch.temp.compteur=32}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=33}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=34}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=35}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=36}] ~1 ~-.5 ~
tp @s[scores={switch.temp.compteur=37}] ~1 ~-.5 ~
tp @s[scores={switch.temp.compteur=38}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=39}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=40}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=41}] ~1.5 ~-.5 ~
data modify entity @s[scores={switch.temp.compteur=41}] NoAI set value 0b

scoreboard players add @s switch.temp.compteur 1
execute if score @s switch.temp.compteur matches 42.. run scoreboard players operation @s shopping_kart.engine = @s switch.temp.old_speed 
scoreboard players reset @s[scores={switch.temp.compteur=42..}] switch.temp.compteur

