
#> switch:modes/cigogne/tick
#
# @within	switch:modes/cigogne/calls/tick
#

scoreboard players add #cigogne_ticks switch.data 1

## Death system
function switch:utils/on_death_run_function {function:"switch:modes/cigogne/death"}

# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={active_effects:[{id:"minecraft:absorption"}]}] unless data entity @s active_effects[{id:"minecraft:absorption"}].show_particles run function switch:modes/cigogne/absorption

# Glowing time
execute as @a[tag=!detached,gamemode=!spectator,predicate=switch:is_sneaking] run scoreboard players add @s switch.temp.sneak 1
scoreboard players remove @a[tag=!detached,gamemode=!spectator,predicate=!switch:is_sneaking] switch.temp.sneak 2
effect give @a[tag=!detached,scores={switch.temp.sneak=200..}] glowing 1 0 true
scoreboard players set @a[tag=!detached,scores={switch.temp.sneak=200..}] switch.temp.sneak 200
scoreboard players set @a[tag=!detached,scores={switch.temp.sneak=..0}] switch.temp.sneak 0

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/cigogne/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/cigogne/process_end

