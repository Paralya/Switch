
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 30950 30950 31050 31050

execute if score #regeneration_ticks switch.data matches 20 run fill 30986 100 30986 31014 100 31014 air replace #switch:de_a_coudre
execute if score #regeneration_ticks switch.data matches 21 run fill 31009 101 30991 30991 101 31009 air replace #switch:de_a_coudre
execute if score #regeneration_ticks switch.data matches 22 run fill 30999 102 31012 30988 102 30988 air replace #switch:de_a_coudre

execute if score #regeneration_ticks switch.data matches 23 run forceload remove 30950 30950 31050 31050
execute if score #regeneration_ticks switch.data matches 23 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/mlg_a_coudre_1/regenerate 1t

