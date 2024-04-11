
# Sheep tick
scoreboard players add #shoot_da_sheep_ticks switch.data 1
execute as @e[type=sheep] at @s run function switch:modes/shoot_da_sheep/sheep_tick

# Unknown death
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/shoot_da_sheep/joined

## End game
execute if score #remaining_time switch.data matches ..0 run function switch:modes/shoot_da_sheep/process_end

