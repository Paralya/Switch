
#> switch:modes/pitch_creep/process_end
#
# @within	switch:modes/pitch_creep/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.alive=1..,switch.temp.shot=0}] only switch:visible/59
function switch:translations/modes_pitch_creep_process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/pitch_creep/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart

