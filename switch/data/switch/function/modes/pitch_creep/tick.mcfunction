
scoreboard players add #pitch_creep_ticks switch.data 1

kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=experience_orb]

function switch:utils/on_death_run_function {function:"switch:modes/pitch_creep/death"}
execute at @n[type=marker,tag=switch.selected_map] run kill @a[tag=!detached,distance=50..,scores={switch.alive=1..}]

execute unless entity @a[scores={switch.alive=1..}] run function switch:modes/pitch_creep/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/pitch_creep/process_end

