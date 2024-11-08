
#> switch:modes/replicate_the_build/process_end
#
# @within	switch:modes/replicate_the_build/tick
#

scoreboard players add #process_end switch.data 1
scoreboard players set #rtb_round_state switch.data 9

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
function switch:translations/modes_replicate_the_build_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/replicate_the_build/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

