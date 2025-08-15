
#> switch:modes/race/map_tick/clock_circuit_tp
#
# @executed	at @s
#
# @within	switch:modes/race/map_tick/clock_circuit [ at @s ]
#

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={switch.temp.compteur=1}] NoAI set value 1b
tp @s[scores={switch.temp.compteur=1}] ~ ~.5 20336.5
tp @s[scores={switch.temp.compteur=2}] ~ ~.25 ~-1.5
tp @s[scores={switch.temp.compteur=3}] ~ ~.25 ~-1.5
tp @s[scores={switch.temp.compteur=4}] ~ ~.1 ~-1.5
tp @s[scores={switch.temp.compteur=5}] ~ ~.1 ~-1.5
tp @s[scores={switch.temp.compteur=6}] ~ ~.3 ~-1.5
tp @s[scores={switch.temp.compteur=7}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=8}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=9}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=10}] ~ ~1 ~-1
tp @s[scores={switch.temp.compteur=11}] ~ ~1 ~-1
tp @s[scores={switch.temp.compteur=12}] ~ ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=13}] ~ ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=14}] ~.5 ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=15}] ~.5 ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=16}] ~.5 ~2 ~.5
tp @s[scores={switch.temp.compteur=17}] ~.5 ~2 ~.5
tp @s[scores={switch.temp.compteur=18}] ~.5 ~1.5 ~.5
tp @s[scores={switch.temp.compteur=19}] ~.5 ~1.5 ~.5
tp @s[scores={switch.temp.compteur=20}] ~.5 ~1 ~1
tp @s[scores={switch.temp.compteur=21}] ~.5 ~1 ~1
tp @s[scores={switch.temp.compteur=22}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=23}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=24}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=25}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=26}] ~ ~-.1 ~2
tp @s[scores={switch.temp.compteur=27}] ~ ~.1 ~2
tp @s[scores={switch.temp.compteur=28}] ~.5 ~-.5 ~1.5
tp @s[scores={switch.temp.compteur=29}] ~.5 ~-.5 ~1.5
tp @s[scores={switch.temp.compteur=30}] ~.5 ~-1 ~1.5
tp @s[scores={switch.temp.compteur=31}] ~.5 ~-1 ~1.5
tp @s[scores={switch.temp.compteur=32}] ~ ~-1.5 ~1
tp @s[scores={switch.temp.compteur=33}] ~ ~-1.5 ~1
tp @s[scores={switch.temp.compteur=34}] ~ ~-2 ~.5
tp @s[scores={switch.temp.compteur=35}] ~ ~-2 ~.5
tp @s[scores={switch.temp.compteur=36}] ~ ~-2 ~-.5
tp @s[scores={switch.temp.compteur=37}] ~ ~-2 ~-.5
tp @s[scores={switch.temp.compteur=38}] ~ ~-1.5 ~-.5
tp @s[scores={switch.temp.compteur=39}] ~ ~-1.5 ~-.5
tp @s[scores={switch.temp.compteur=40}] ~ ~-1 ~-1
tp @s[scores={switch.temp.compteur=41}] ~ ~-1 ~-1
tp @s[scores={switch.temp.compteur=42}] ~ ~-.5 ~-1.5
tp @s[scores={switch.temp.compteur=43}] ~ ~-.5 ~-1.5
tp @s[scores={switch.temp.compteur=44}] ~ ~-.5 ~-2
tp @s[scores={switch.temp.compteur=45}] ~ ~-.3 ~-2
tp @s[scores={switch.temp.compteur=46}] ~ ~-.1 ~-2
tp @s[scores={switch.temp.compteur=47}] ~ ~-.1 ~-2
data modify entity @s[scores={switch.temp.compteur=47}] NoAI set value 0b

scoreboard players add @s switch.temp.compteur 1
execute if score @s switch.temp.compteur matches 48.. run scoreboard players operation @s shopping_kart.engine = @s switch.temp.old_speed 
scoreboard players reset @s[scores={switch.temp.compteur=48..}] switch.temp.compteur

