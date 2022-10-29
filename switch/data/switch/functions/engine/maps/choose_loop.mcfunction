
data remove storage switch:main copy[0]
scoreboard players remove #random switch.data 1
execute unless score #random switch.data matches 0 run function switch:engine/maps/choose_loop

