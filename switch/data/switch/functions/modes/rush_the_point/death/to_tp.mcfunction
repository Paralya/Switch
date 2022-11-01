
execute if data storage switch:main {map:"spectre_original"} run spreadplayers 2500 2500 1 30 under 185 false @s
execute if data storage switch:main {map:"mushroom_plains"} run spreadplayers 4000 4000 1 50 under 150 false @s
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death

