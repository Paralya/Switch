
# Respawn tick
scoreboard players add #minigolf_ticks switch.data 1
scoreboard players remove @a[scores={switch.temp.respawn=1..}] switch.temp.respawn 1
execute as @a[scores={switch.alive=1},predicate=golf_ball:has_vehicle] at @s run function switch:modes/minigolf/check_respawn

# Check if some players lost their ball (finished or give up)
execute as @a[scores={switch.alive=1},predicate=!golf_ball:has_vehicle] at @s run function switch:modes/minigolf/check_lost_ball

## End game
execute if score #remaining_time switch.data matches 1.. if score #minigolf_seconds switch.data matches 1.. unless entity @a[scores={switch.alive=1}] run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches ..0 run function switch:modes/minigolf/process_end

