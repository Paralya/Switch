
#> switch:modes/infected/tick
#
# @within	switch:modes/infected/calls/tick
#

scoreboard players add #infected_ticks switch.data 1

# Détection de la mort
function switch:utils/on_death_run_function {function:"switch:modes/infected/death/zombie_spawn"}

# Saturation qui ne régène pas en mode OP
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# Prevent drop + kill arrow
execute as @e[type=item,tag=!switch.checked] run function switch:modes/infected/no_drop
kill @e[type=arrow,nbt={inBlockState:{}}]
execute as @e[type=arrow] run data modify entity @s damage set value 0.5d

# Maps tick
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/secrets/tick

# Détection de fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/infected/process_end

