
#> switch:modes/sheepwars/translations/tick
#
# @within	switch:modes/sheepwars/tick
#

# French
execute if score #sheepwars_night switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[SheepWars] ","color":"#FFE60A"},{"text":"Une nuit intergalactique commence !","color":"#2E9BFF"}]

# English
execute if score #sheepwars_night switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[SheepWars] ","color":"#FFE60A"},{"text":"An intergalactic night begins!","color":"#2E9BFF"}]

