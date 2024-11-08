
#> switch:modes/creeper_apocalypse/tick
#
# @within	switch:modes/creeper_apocalypse/calls/tick
#

scoreboard players add #creeper_apocalypse_ticks switch.data 1

execute as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier run kill @s
function switch:utils/on_death_run_function {function:"switch:modes/creeper_apocalypse/death"}
stopsound @a[tag=!detached] * entity.explode

# Creeper stuff
effect give @e[type=creeper] resistance infinite 0 true
execute as @e[type=area_effect_cloud] at @s run function switch:modes/creeper_apocalypse/creeper_exploded
execute as @e[type=creeper] run scoreboard players add @e[type=creeper,sort=random,limit=1] switch.temp.duplication 1
execute as @e[type=creeper,scores={switch.temp.duplication=200..}] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if block ~ ~-1 ~ barrier run tp @s 0 -10000 0
kill @e[type=item]

# Creeper Count
scoreboard players set #creeper_count switch.data 0
execute store result score #creeper_count switch.data if entity @e[type=creeper]
function switch:translations/modes_creeper_apocalypse_tick

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #remaining_time switch.data matches 1.. unless entity @a[scores={switch.alive=1..}] run function switch:modes/creeper_apocalypse/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/creeper_apocalypse/process_end

