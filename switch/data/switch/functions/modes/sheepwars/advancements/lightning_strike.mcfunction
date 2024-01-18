
advancement revoke @s only switch:sheepwars/lightning_strike
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"sheepwars"} run advancement grant @s[scores={switch.last_death=..2}] only switch:visible/19

