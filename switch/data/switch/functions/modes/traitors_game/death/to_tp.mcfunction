
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @s
execute if data storage switch:main {map:"zone_51"} run spreadplayers 2000 2000 1 50 under 170 false @s
execute if data storage switch:main {map:"spectre_original"} run spreadplayers 2500 2500 1 30 under 185 false @s
execute if data storage switch:main {map:"mushroom_plains"} run spreadplayers 4000 4000 1 50 under 150 false @s
execute if data storage switch:main {map:"jayl_dark_forest"} run spreadplayers 33931 33923 1 30 under 180 false @a
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

