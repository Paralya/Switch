
#> switch:modes/fireblast/process_end
#
# @within	switch:modes/fireblast/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function switch:engine/add_win
function switch:translations/modes_fireblast_process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/fireblast/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart

