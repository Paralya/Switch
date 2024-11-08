
# Timer
scoreboard players add #kart_racer_ticks switch.data 1

# Blocks tick, checkpoints tick, right click detection
execute if score #detect_end switch.data matches 0 as @e[tag=shopping_kart.kart] at @s run function switch:modes/kart_racer/blocks/tick
execute if score #detect_end switch.data matches 0 as @e[type=marker,tag=switch.checkpoint] at @s run function switch:modes/kart_racer/checkpoints/tick
execute if score #detect_end switch.data matches 0 as @a[tag=!detached,scores={switch.right_click=1..}] run function switch:modes/kart_racer/right_click

# Start fixes -7
execute if score #kart_racer_seconds switch.data matches -7..-1 run team join switch.temp.kart @e[tag=shopping_kart.kart]
execute if score #kart_racer_seconds switch.data matches -7..-1 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 1b
execute if score #kart_racer_seconds switch.data matches ..-8 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #kart_racer_seconds switch.data matches -7..-1 run scoreboard players set @e[tag=shopping_kart.kart,scores={shopping_kart.engine=200..}] shopping_kart.engine 200
execute if score #kart_racer_seconds switch.data matches 0 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 0b

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure,predicate=!switch:has_vehicle] at @s run ride @s mount @e[tag=shopping_kart.kart,predicate=!switch:has_passenger,sort=nearest,limit=1,distance=..100]

# Remove items and death prevention
function switch:utils/on_death_run_function {function:"switch:modes/kart_racer/joined"}
kill @e[type=item]

# Maps tick for special events
execute if data storage switch:main {map:"plains_routine"} in minecraft:overworld run function switch:modes/kart_racer/map_tick/plains_routine
execute if data storage switch:main {map:"airship_fortress"} in minecraft:overworld run function switch:modes/kart_racer/map_tick/airship_fortress
execute if data storage switch:main {map:"dk_mountain"} in minecraft:overworld run function switch:modes/kart_racer/map_tick/dk_mountain
execute if data storage switch:main {map:"clock_circuit"} in minecraft:overworld run function switch:modes/kart_racer/map_tick/clock_circuit
execute if data storage switch:main {map:"trackmania_stadium_2"} in minecraft:overworld run function switch:modes/kart_racer/map_tick/trackmania_stadium_2

## Fin de la partie
execute if score #detect_end switch.data matches 1.. run function switch:modes/kart_racer/process_end

