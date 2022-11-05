advancement revoke @s only switch:glassrunner/destroying_crossbow
execute if data storage switch:main {current_game:"glassrunner"} positioned 3000 128 3000 run function switch:modes/glassrunner/crossbow/use
