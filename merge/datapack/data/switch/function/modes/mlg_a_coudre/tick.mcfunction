
scoreboard players add #mlg_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/mlg_a_coudre/done
function switch:utils/on_death_run_function {function:"switch:modes/mlg_a_coudre/death"}
execute if score #mlg_a_coudre_seconds switch.data matches 1.. if score #detect_end switch.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function switch:modes/mlg_a_coudre/next_player

## End game
scoreboard players set #position switch.data 0
execute store result score #position switch.data if entity @a[scores={switch.temp.lives=1..}]
execute if score #detect_end switch.data matches 0 if score #position switch.data matches ..1 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #mlg_a_coudre_seconds switch.data matches 600.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function switch:modes/mlg_a_coudre/process_end

