
#> switch:modes/infected/process_end
#
# @within	switch:modes/infected/tick
#

scoreboard players add #process_end switch.data 1

# Victory
function switch:translations/modes_infected_process_end

# Advancements
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,team=switch.temp.human,scores={switch.temp.hits_gotten=0}] only switch:visible/57
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 store result score #nb_humans switch.data if entity @a[tag=!detached,team=switch.temp.human]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 store result score #nb_players switch.data if entity @a[tag=!detached]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 unless score #test_mode switch.data matches 1 if score #nb_humans switch.data matches 1 if score #nb_players switch.data matches 10.. run advancement grant @s only switch:visible/74

# Give money + son de fin
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 as @a[tag=!detached,team=switch.temp.human] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 as @a[tag=!detached,team=switch.temp.zombie,scores={switch.temp.original_zombie=1}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

