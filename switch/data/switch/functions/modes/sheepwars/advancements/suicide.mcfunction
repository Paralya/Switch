
advancement revoke @s only switch:sheepwars/suicide
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"sheepwars"} if score @s[team=switch.temp.red] switch.temp.killed_red matches 1.. run advancement grant @s only switch:visible/46
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"sheepwars"} if score @s[team=switch.temp.blue] switch.temp.killed_blue matches 1.. run advancement grant @s only switch:visible/46

