
#> switch:modes/sheepwars/advancements/lightning_strike
#
# @executed	as the player & at current position
#
# @within	advancement switch:sheepwars/lightning_strike
#

advancement revoke @s only switch:sheepwars/lightning_strike
execute if score #engine_state switch.data matches 3 unless score #test_mode switch.data matches 1 if data storage switch:main {current_game:"sheepwars"} if entity @e[type=lightning_bolt,distance=..3] run advancement grant @s[scores={switch.last_death=..2}] only switch:visible/19

