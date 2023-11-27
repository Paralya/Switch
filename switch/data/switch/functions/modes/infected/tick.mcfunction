
scoreboard players add #infected_ticks switch.data 1

# Détection de la mort
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/infected/death/zombie_spawn

# Saturation qui ne régène pas en mode OP
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# Détection de fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/infected/process_end

