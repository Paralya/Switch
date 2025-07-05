
#> switch:modes/infected/tick
#
# @within	switch:modes/infected/calls/tick
#

scoreboard players add #infected_ticks switch.data 1

# Détection de la mort
function switch:utils/on_death_run_function {function:"switch:modes/infected/death/zombie_spawn"}

# Ticking function on all players
execute as @a[tag=!detached] run function switch:modes/infected/player_tick

# Prevent drop + kill arrow
execute as @e[type=item,tag=!switch.checked] run function switch:modes/infected/no_drop
kill @e[type=arrow,nbt={inBlockState:{}}]
execute as @e[type=arrow] run data modify entity @s damage set value 0.5d

# Maps tick
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/secrets/tick

# Détection de fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/infected/process_end

