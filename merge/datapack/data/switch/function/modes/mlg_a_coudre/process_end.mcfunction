
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 as @a[tag=!detached,scores={switch.temp.lives=1..}] at @s run function switch:engine/add_win
function switch:translations/modes_mlg_a_coudre_process_end
execute if score #process_end switch.data matches 1 run scoreboard players reset @a[tag=!detached] switch.temp.lives
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/mlg_a_coudre/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart

