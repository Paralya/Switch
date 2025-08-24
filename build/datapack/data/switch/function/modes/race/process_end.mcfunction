
#> switch:modes/race/process_end
#
# @within	switch:modes/race/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[team=switch.temp.1,tag=!detached,scores={switch.alive=2}] at @s run function switch:engine/add_win
function switch:translations/modes_race_process_end
execute if score #process_end switch.data matches 1 run scoreboard players reset @a[tag=!detached] switch.alive
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/race/complete
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

