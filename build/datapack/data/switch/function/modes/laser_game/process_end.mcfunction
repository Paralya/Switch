
#> switch:modes/laser_game/process_end
#
# @within	switch:modes/laser_game/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[tag=!detached,scores={switch.alive=11}] at @s run function switch:engine/add_win
function switch:translations/modes_laser_game_process_end
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[tag=!detached,scores={switch.alive=10}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 run kill @e[tag=switch.laser_game.base]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 run effect clear @a[tag=!detached]
execute if score #process_end switch.data matches 1 run clear @a[tag=!detached]

execute if score #process_end switch.data matches 1 run scoreboard objectives setdisplay sidebar switch.temp.individual_points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart

