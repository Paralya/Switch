
scoreboard players add #beat_the_kings_ticks switch.data 1

execute as @a[tag=!detached,tag=switch.to_tp] run function switch:modes/beat_the_kings/teleport_to_death

execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/beat_the_kings/death/player
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/beat_the_kings/death/detect
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/beat_the_kings/death/for_global

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[scores={switch.temp.killed_kings=1..}] only switch:visible/66

# Détection de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 1..900 run function switch:modes/beat_the_kings/detect_end
execute if score #beat_the_kings_seconds switch.data matches 901.. run function switch:modes/beat_the_kings/process_end

