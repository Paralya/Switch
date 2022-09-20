
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @s
execute if data storage switch:main {map:"zone_51"} run spreadplayers 1500 1500 1 100 under 160 false @s
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

