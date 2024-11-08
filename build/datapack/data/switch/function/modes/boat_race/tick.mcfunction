
#> switch:modes/boat_race/tick
#
# @within	switch:modes/boat_race/calls/tick
#

scoreboard players add #boat_race_ticks switch.data 1

# Fall in void or unknown death
function switch:utils/on_death_run_function {function:"switch:modes/boat_race/death/"}
execute as @a[scores={switch.alive=1..}] at @s if entity @s[y=-64,dy=64] run function switch:modes/boat_race/death

# Détecte si tous les joueurs ont finis
scoreboard players set #alives switch.data 0
scoreboard players set #finished switch.data 0
execute store result score #alives switch.data if entity @a[scores={switch.alive=-1..}]
execute store result score #finished switch.data if entity @a[scores={switch.alive=-1}]
execute if score #alives switch.data = #finished switch.data run scoreboard players set #detect_end switch.data 1

execute in minecraft:overworld as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] at @s run function switch:modes/boat_race/finish
execute in minecraft:overworld as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=50997,y=92,z=50964,dx=6,dy=4,dz=5] at @s run function switch:modes/boat_race/finish

# Fin de la partie si le temps est écoulé, ou qu'ils ont tous finis
execute if score #boat_race_seconds switch.data matches 480.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function switch:modes/boat_race/process_end

