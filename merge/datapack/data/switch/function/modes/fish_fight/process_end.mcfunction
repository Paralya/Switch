
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
function switch:translations/modes_fish_fight_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/joined
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart

    