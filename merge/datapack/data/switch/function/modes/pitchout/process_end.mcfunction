
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.alive=3..}] run advancement grant @s only switch:visible/7
function switch:translations/modes_pitchout_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/pitchout/joined
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 in switch:game run spawnpoint @a[tag=!detached] 0 70 0
execute if score #process_end switch.data matches 100 run kill @a[tag=!detached]
execute if score #process_end switch.data matches 100 run function switch:engine/restart

