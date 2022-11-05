
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 28986 28986 29014 29014

execute if score #regeneration_ticks switch.data matches 20 run fill 28986 100 28986 29014 100 29014 water replace #wool
execute if score #regeneration_ticks switch.data matches 20 run fill 28986 100 28986 29014 100 29014 water replace emerald_block

execute if score #regeneration_ticks switch.data matches 20 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 20 run forceload remove 28986 28986 29014 29014
execute if score #regeneration_ticks switch.data matches 20 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:engine/maps/survival/de_a_coudre_1/regenerate 1t

