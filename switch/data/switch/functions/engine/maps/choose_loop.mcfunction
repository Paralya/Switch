
scoreboard players remove #random switch.data 1
data remove storage switch:main maps_to_choose[0]
execute unless score #random switch.data matches 0 run function switch:engine/maps/choose_loop

