
scoreboard players add #simultaneous_jump_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/simultaneous_jump/done
function switch:utils/on_death_run_function {function:"switch:modes/simultaneous_jump/death"}

## End game
execute if score #remaining_time switch.data matches ..0 run function switch:modes/simultaneous_jump/process_end

