
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @s
execute if data storage switch:main {map:"zone_51"} run spreadplayers 2000 2000 1 100 under 170 false @s
execute if data storage switch:main {map:"spectre_original"} run spreadplayers 2500 2500 1 100 under 185 false @s
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

