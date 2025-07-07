
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
function switch:translations/modes_creeper_apocalypse_process_end
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.ocelot=1}] run advancement grant @s only switch:visible/25
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/creeper_apocalypse/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

