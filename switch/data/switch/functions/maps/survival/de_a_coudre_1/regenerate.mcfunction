
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 28950 28950 29050 29050

execute if score #regeneration_ticks switch.data matches 20 run fill 29022 150 28999 29021 150 29001 water replace #switch:de_a_coudre
execute if score #regeneration_ticks switch.data matches 21 run fill 28986 100 28986 29014 100 29014 water replace #switch:de_a_coudre
execute if score #regeneration_ticks switch.data matches 22 run fill 29009 101 28991 28991 101 29009 water replace #switch:de_a_coudre
execute if score #regeneration_ticks switch.data matches 23 run fill 28999 102 29012 28988 102 28988 water replace #switch:de_a_coudre

execute if score #regeneration_ticks switch.data matches 23 run forceload remove 28950 28950 29050 29050
execute if score #regeneration_ticks switch.data matches 23 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/de_a_coudre_1/regenerate 1t

