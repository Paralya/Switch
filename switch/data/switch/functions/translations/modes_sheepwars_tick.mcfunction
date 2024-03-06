
# French
execute if score #sheepwars_night switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[SheepWars] ","color":"yellow"},{"text":"Une nuit intergalactique commence !","color":"blue"}]

# English
execute if score #sheepwars_night switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[SheepWars] ", "color": "yellow"},{"text": "An intergalactic night begins!", "color": "blue"}]

