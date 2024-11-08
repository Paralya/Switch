
#> switch:modes/shoot_da_sheep/tick
#
# @within	switch:modes/shoot_da_sheep/calls/tick
#

# Sheep tick
scoreboard players add #shoot_da_sheep_ticks switch.data 1
execute as @e[type=sheep] at @s run function switch:modes/shoot_da_sheep/sheep_tick

# Unknown death
function switch:utils/on_death_run_function {function:"switch:modes/shoot_da_sheep/joined"}

## End game
execute if score #remaining_time switch.data matches ..0 run function switch:modes/shoot_da_sheep/process_end

