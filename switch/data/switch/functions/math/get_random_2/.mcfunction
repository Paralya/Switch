scoreboard players set #random switch.data 0

execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 2
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 4
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 8
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 16
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 32
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 64

scoreboard players operation #random switch.data %= #9 switch.data
