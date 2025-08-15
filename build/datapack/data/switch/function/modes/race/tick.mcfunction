
#> switch:modes/race/tick
#
# @within	switch:modes/race/calls/tick
#

# Timer
scoreboard players add #race_ticks switch.data 1

# Blocks tick, checkpoints tick, right click detection
execute if score #detect_end switch.data matches 0 as @e[tag=shopping_kart.kart] at @s run function switch:modes/race/tm_blocks/tick
execute if score #detect_end switch.data matches 0 as @e[type=marker,tag=switch.checkpoint] at @s run function switch:modes/race/checkpoints/tick
execute if score #detect_end switch.data matches 0 as @a[tag=!detached,scores={switch.right_click=1..}] run function switch:modes/race/right_click

# Start fixes -7
execute if score #race_seconds switch.data matches -7..-1 run team join switch.temp.kart @e[tag=shopping_kart.kart]
execute if score #race_seconds switch.data matches -7..-1 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 1b
execute if score #race_seconds switch.data matches ..-8 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #race_seconds switch.data matches -7..-1 run scoreboard players set @e[tag=shopping_kart.kart,scores={shopping_kart.engine=200..}] shopping_kart.engine 200
execute if score #race_seconds switch.data matches 0 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 0b

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure,predicate=!switch:has_vehicle] at @s run ride @s mount @n[tag=shopping_kart.kart,predicate=!switch:has_player_passenger,distance=..100]

# Remove items and death prevention
function switch:utils/on_death_run_function {function:"switch:modes/race/joined"}
kill @e[type=item]

# Maps tick for special events
execute if data storage switch:main {map:"plains_routine"} run function switch:modes/race/map_tick/plains_routine
execute if data storage switch:main {map:"airship_fortress"} run function switch:modes/race/map_tick/airship_fortress
execute if data storage switch:main {map:"dk_mountain"} run function switch:modes/race/map_tick/dk_mountain
execute if data storage switch:main {map:"clock_circuit"} run function switch:modes/race/map_tick/clock_circuit
execute if data storage switch:main {map:"trackmania_stadium_2"} run function switch:modes/race/map_tick/trackmania_stadium_2

## Fin de la partie
execute if score #detect_end switch.data matches 1.. run function switch:modes/race/process_end

