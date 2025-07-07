
#> switch:modes/boat_race/process_end
#
# @within	switch:modes/boat_race/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=-1}] at @s run function switch:engine/add_win
function switch:translations/modes_boat_race_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/boat_race/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

