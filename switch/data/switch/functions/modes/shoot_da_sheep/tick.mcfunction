

# Sheep tick
scoreboard players add #shoot_da_sheep_ticks switch.data 1
execute as @e[type=sheep] at @s run function switch:modes/shoot_da_sheep/sheep_tick


## Fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/shoot_da_sheep/process_end

