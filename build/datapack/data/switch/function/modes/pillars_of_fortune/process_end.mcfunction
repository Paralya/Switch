
#> switch:modes/pillars_of_fortune/process_end
#
# @within	switch:modes/pillars_of_fortune/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function switch:translations/modes_pillars_of_fortune_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/pillars_of_fortune/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart

